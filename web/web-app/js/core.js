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

function nextStep(){
    var el = $("[name='step'].active").next();
    return el;
}

function activateStep(step){

    if (step.length > 0) {
        var id = step[0].id;
        // activo tabs
        $("[name='step']").removeClass('active').addClass('disabled');
        $('#' + id).removeClass('disabled').addClass('active');

        if (id === "step2"){
			$("#createFormModal").removeClass('modal-medium').addClass('modal-extra-large');
			$("#createNext").addClass('hide');
			$("#createReset").addClass('hide');
			$("#createCancel").html('Finalizar');
        }
    }
}

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
/*
$("#createNext").on('click', function() {

    var queryString = $("#formCreateJob").serialize();

    $.ajax("/createJob?"+queryString, {

		success: function(data) {

			activateStep(nextStep());
			var divContenedor = $('<div/>', {class: 'span12'});
			var divRow = $('<div/>', {class: 'row-fluid'});
			var divFormulario = $('<div/>', {
			    class: 'span5',
			    style :'max-width: 440px; margin-right: 10px;'
			});
			var divListado = $('<div/>', {
			    id: 'divItemsByJob',
			    class: 'span7',
			    style :'margin-left: 0px; padding-left: 0px;'
			});
			
			$.ajax("/getItemsForm?jobId="+data, {
				async: false,
				success: function(d1) { 
					var form = $(d1);
					divFormulario.html(form);
					interceptSubmit(form);
				},
				error: function() {
					showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
				}
			});

			$.ajax("/itemsByJob?jobId="+data, {
				async: false,
				success: function(d2) { 
					divListado.html(d2);
				},
				error: function() {
					showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
				}
			});

			divRow.append(divFormulario);
			divRow.append(divListado);
			divContenedor.append(divRow);

			$("#createFormContent").html(divContenedor);
			
		},
		error: function(data) {

			showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
		}
	});
});*/

$("#createNext").on('click', function() {

	var jobMapping = {

		"formSelector"	: "#formCreateJob",
		"createUri"		: "/createJob?",
		"formUri"		: "/getItemsForm?jobId=",
		"listUri"		: "/itemsByJob?jobId="
	}

	var copMapping = {

		"formSelector"	: "#formCreateCop",
		"createUri"		: "/createCop?",
		"formUri"		: "/getMembersForm?poviderId=",
		"listUri"		: "/getMembersByProvider?poviderId="
	}

	var mapping = ($(this).attr("data-copType") === "0") ? copMapping : jobMapping;

    var queryString = $(mapping.formSelector+"").serialize();

    $.ajax(mapping.createUri+queryString, {

		success: function(data) {

			activateStep(nextStep());
			var divContenedor = $('<div/>', {class: 'span12'});
			var divRow = $('<div/>', {class: 'row-fluid'});
			var divFormulario = $('<div/>', {
			    class: 'span5',
			    style :'max-width: 440px; margin-right: 10px;'
			});
			var divListado = $('<div/>', {
			    id: 'divItemsByJob',
			    class: 'span7',
			    style :'margin-left: 0px; padding-left: 0px;'
			});
			
			$.ajax(mapping.formUri+data, {
				async: false,
				success: function(d1) { 
					var form = $(d1);
					divFormulario.html(form);
					interceptSubmit(form);
				},
				error: function() {
					showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
				}
			});

			$.ajax(mapping.listUri+data, {
				async: false,
				success: function(d2) { 
					divListado.html(d2);
				},
				error: function() {
					showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
				}
			});

			divRow.append(divFormulario);
			divRow.append(divListado);
			divContenedor.append(divRow);

			$("#createFormContent").html(divContenedor);
			
		},
		error: function(data) {

			showAlert("Ocurió un error al intentar recuperar el formulario de alta.", "alert alert-error");
		}
	});
});

$("#updNext").on('click', function() {
    activateStep(nextStep());
});

function interceptSubmit(form){
    var el = form.find("#itemsForm"); 
    el.submit(function() {
        $.post($("#itemsForm").attr("action"), $("#itemsForm").serialize(), function(data){
            // <--- limpiar el form!!
            $('#divItemsByJob').html(data);
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

$(document).ready(function() {

	var copType = document.getElementById('copType').innerHTML;
	document.getElementById('copType-' + copType).className = 'active';

	var el = document.getElementById('alta');	
	el.innerHTML = '<a id="create" data-copType="'+copType+'" href="#"><i class="icon-plus-sign"></i> Nuevo</a>';

	$("#create").on('click', create);
	
	$("[name='view']:last").addClass("last-drop-down");

	$(".dropdown-menu:last").addClass("last-drop-down");
});