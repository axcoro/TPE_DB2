// todo: merjorar
var timerActive = null; // timerid
function clearAlert()
{
    if(timerActive) // si hay un timer activo dejarlo que termine
        return;
    $("#notifications").html("");
    $("#notifications").removeClass("alert");
    $("#notifications").removeClass("alert-error");
}

function showAlert(msg, cls)
{
    if(timerActive) // si hay un timer activo previo, borrarlo
        clearTimeout(timerActive);
       
    console.log(msg);
    $("#notifications").html(msg);
    if(!cls)
        cls = '';
    
    $("#notifications").removeClass("alert-error");
    $("#notifications").addClass("alert " + cls);
   
    timerActive = setTimeout(function(){ // establecer caducidad del alert
        timerActive = null;
        clearAlert();
    }, 3000);
}

function nextStep(suffix){
    if(!suffix)
        suffix = "";
    var el = $("[name='step"+suffix+"'].active").next();
    return el;
}

function activateStep(step, suffix, action){
    if(!suffix)
        suffix = "";
    
    if(!action)
        action = "create";
    
    if (step.length > 0) {
        var id = step[0].id;
        // activo tabs
        $("[name='step"+suffix+"']").removeClass('active').addClass('disabled');
        $('#' + id).removeClass('disabled').addClass('active');

        if (id === "step2" + suffix){
			$("#"+action+"FormModal").removeClass('modal-medium').addClass('modal-extra-large');
			$("#"+action+"Next").addClass('hide');
			$("#"+action+"Reset").addClass('hide');
			$("#"+action+"Cancel").html('Finalizar');
        }
    }
}

$("[name='itemsByJob']").on('click', function(){

	clearAlert();
	$("#itemsByJobModalContent").html("");

	var jobId = $(this).attr("data-jobId");

	$.ajax("/itemsByJob?jobId="+jobId, {

		success: function(data) { 
				$("#itemsByJobModalContent").html(data);
				$("#itemsByJobModal").modal("show");
		},
		error: function(data) {

			showAlert("No se pudieron obtener los artículos.", "alert-error");
		}
	});
});

$("[name='othersByJob']").on('click', function(){

	clearAlert();
	$("#othersByJobModalContent").html("");

	var jobId = $(this).attr("data-jobId");

	$.ajax("/othersByJob?jobId="+jobId, {

		success: function(data) {

			$("#othersByJobModalContent").html(data);
			$("#othersByJobModal").modal("show");
		},
		error: function(data) {

			showAlert("No se pudieron obtener los terceros.", "alert-error");
		}
	});
});

$("[name='deleteCop']").on('click', function() {

	var copId = $(this).attr("data-copId");

	var dataUri = $("#yesBtn").attr("data-uri");

	$("#yesBtn").attr("href", dataUri+"&copId="+copId);

	$("#deleteModal").modal('show');
});

$("[name='editCop']").on('click', function() {
    
    	$("[name='stepEdit']").removeClass('active').addClass('disabled');
	$('#step1Edit').removeClass('disabled').addClass('active');

	$("#editFormModal").removeClass('modal-extra-large');
	
	$("#editNext").removeClass('hide');
	$("#editReset").removeClass('hide');
	$("#editCancel").html('Cancelar');
    
	var copId = $(this).attr("data-copId");
	var copType = $(this).attr("data-copType");

	$.ajax("/editForm?copType="+copType+"&copId="+copId, {

		success: function(data) { 
			$("#editFormContent").html(data);
			$("#editFormModal").modal("show");
		},
		error: function(data) {
			showAlert("Ocurió un error al intentar recuperar el formulario de edicion.", "alert-error");
		}
	});
});

$("[name='editJob']").on('click', function() {

	$("[name='stepEdit']").removeClass('active').addClass('disabled');
	$('#step1Edit').removeClass('disabled').addClass('active');

	$("#editFormModal").removeClass('modal-extra-large');
	
	$("#editNext").removeClass('hide');
	$("#editReset").removeClass('hide');
	$("#editCancel").html('Cancelar');

	var jobId = $(this).attr("data-jobId");

	$.ajax("/editForm?jobId="+jobId, {
		success: function(data) { 
			$("#editFormContent").html(data);
			$("#editFormModal").modal("show");
		},
		error: function(data) {
			showAlert("Ocurió un error al intentar recuperar el formulario de edicion.", "alert-error");
		}
	});
});

$("[name='deleteJob']").on('click', function() {

	var jobId = $(this).attr("data-jobId");

	var dataUri = $("#yesBtn").attr("data-uri");

	$("#yesBtn").attr("href", dataUri+"?jobId="+jobId);

	$("#deleteModal").modal('show');
});

function magicLogic(map, _that) {
    var mapping = ($(_that).attr("data-copType") === "0") ? map.cop : map.job;

    var queryString = $(mapping.formSelector).serialize();

    $.ajax(mapping.createUri+queryString, {

		success: function(data) {
			var stepSuffix = mapping.stepSuffix;
			var action = mapping.action;
			activateStep(nextStep(stepSuffix), stepSuffix, action);
			var divContenedor = $('<div/>', {class: 'span12'});
			var divRow = $('<div/>', {class: 'row-fluid'});
			var divFormulario = $('<div/>', {
			    class: 'span5',
			    style :'max-width: 440px; margin-right: 10px;'
			});
			var divListado = $('<div/>', {
			    id: mapping.divItems,
			    class: 'span7',
			    style :'margin-left: 0px; padding-left: 0px;'
			});
			
			$.ajax(mapping.formUri+data, {
				async: false,
				success: function(d1) { 
					var form = $(d1);
					divFormulario.html(form);
					interceptSubmit(form, divFormulario.html(), mapping.divItemsSelector, mapping.formListSelector);
				},
				error: function() {
					showAlert("Ocurió un error al intentar recuperar el formulario", "alert alert-error");
				}
			});

			$.ajax(mapping.listUri+data, {
				async: false,
				success: function(d2) { 
					divListado.html(d2);
				},
				error: function() {
					showAlert("Ocurió un error al intentar recuperar el listado", "alert alert-error");
				}
			});

			divRow.append(divFormulario);
			divRow.append(divListado);
			divContenedor.append(divRow);

			$(mapping.formContentSelector).html(divContenedor);
			
		},
		error: function() {
			showAlert("Ocurió un error al intentar recuperar el formulario", "alert alert-error");
		}
	});
};

$("#createNext").on('click', function() {
    var mapping = {
        job: {
            "formSelector": "#formCreateJob",
            "createUri": "/createJob?",
            "formUri": "/getItemsForm?jobId=",
            "listUri": "/itemsByJob?jobId=",
            "formContentSelector": "#createFormContent",
            "divItems": "divItemsByJobCreate",
            "divItemsSelector": "#divItemsByJobCreate",
            "formListSelector": "#itemsForm",
            "stepSuffix": "",
            "action": "create"
        },
        cop: {
            "formSelector": "#formCreateCop",
            "createUri": "/createCop?",
            "formUri": "/getMembersForm?copId=",
            "listUri": "/getMembersByProvider?copId=",
            "formContentSelector": "#createFormContent",
            "divItems": "divItemsByCopCreate",
            "divItemsSelector": "#divItemsByCopCreate",
            "formListSelector": "#membersForm",
            "stepSuffix": "",
            "action": "create"
        }
    };
    magicLogic(mapping, this);
});

$("#editNext").on('click', function() {
    var mapping = {
        job: {
            "formSelector": "#formEditJob",
            "createUri": "/editJob?",
            "formUri": "/getItemsForm?jobId=",
            "listUri": "/itemsByJob?jobId=",
            "formContentSelector": "#editFormContent",
            "divItems": "divItemsByJobEdit",
            "divItemsSelector": "#divItemsByJobEdit",
            "formListSelector": "#itemsForm",
            "stepSuffix": "Edit",
            "action": "edit"
        },
        cop: {
            "formSelector": "#formEditCop",
            "createUri": "/editCop?",
            "formUri": "/getMembersForm?poviderId=",
            "listUri": "/getMembersByProvider?poviderId=",
            "formContentSelector": "#editFormContent",
            "divItems": "divItemsByCopEdit",
            "divItemsSelector": "#divItemsByCopEdit",
            "formListSelector": "#membersForm",
            "stepSuffix": "Edit",
            "action": "edit"
        }
    };
    magicLogic(mapping, this);
});

function interceptSubmit(form, html, itemsContainer, formListSelector){
    var el = form.find(formListSelector); 
    el.submit(function() {
        $.post($(formListSelector).attr("action"), $(formListSelector).serialize(), function(data){
            $(itemsContainer).html(data);
            var h = $(html).find(formListSelector).html();
            el.html(h);
        });
        return false;
    });
}

function create() {
	$("[name='step']").removeClass('active').addClass('disabled');
	$('#step1').removeClass('disabled').addClass('active');

	$("#createFormModal").removeClass('modal-extra-large');
	
	$("#createNext").removeClass('hide');
	$("#createReset").removeClass('hide');
	$("#createCancel").html('Cancelar');

	var copType = $(this).attr("data-copType");

	$.ajax("/createForm?copType="+copType, {

		success: function(data) { 

			$("#createFormContent").html(data);
			$("#createFormModal").modal("show");
		},
		error: function(data) {

			showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
		}
	});
};

function registerItemsFunctions(jobId) {
    $("[name='item-remove']").off('click');
    $("[name='item-remove']").on('click', function() {
        var jobItemId = $(this).attr("data-jobItemId");

        $.ajax("/deleteItem?itemId=" + jobItemId + "&jobId=" + jobId, {
            success: function(data) {
	    $("#listJobsContainer").replaceWith(data);
            },
            error: function() {
	showAlert("No se pudieron obtener los artículos.", "alert-error");
            }
        });

    });
}

function registerMembersFunctions(copId) {
    
    /*  TODO: implementar con data-providerMemberId

    $("[name='item-remove']").off('click');
    $("[name='item-remove']").on('click', function() {
        var jobItemId = $(this).attr("data-jobItemId");

        $.ajax("/deleteItem?itemId=" + jobItemId + "&jobId=" + jobId, {
            success: function(data) {
	    $("#listJobsContainer").replaceWith(data);
            },
            error: function() {
	showAlert("No se pudieron obtener los artículos.", "alert-error");
            }
        });

    });*/
}

$(document).ready(function() {

	var copType = document.getElementById('copType').innerHTML;
	document.getElementById('copType-' + copType).className = 'active';

	var el = document.getElementById('alta');	
	el.innerHTML = '<a id="create" data-copType="'+copType+'" href="#"><i class="icon-plus-sign"></i> Nuevo</a>';

	$("#create").on('click', create);
	
	$("[name='view']:last").addClass("last-drop-down");

	$(".dropdown-menu:last").addClass("last-drop-down");
});