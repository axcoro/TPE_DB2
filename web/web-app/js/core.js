
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
			$("#"+action+"Reset").addClass('hide');
        }
        if (id === "end" + suffix || id === "step2end" + suffix){
			$("#"+action+"FormModal").removeClass('modal-extra-large').addClass('modal-extra-large');
			$("#"+action+"Next").addClass('hide');
			$("#"+action+"Reset").addClass('hide');
			$("#"+action+"Cancel").html('Finalizar');
			$("#"+action+"Cancel").removeClass('btn-danger');
			$("#"+action+"Cancel").addClass('btn-success');
        }
        return id;
    }
}
 
$("[name='membersByProvider']").on('click', function(){

	clearAlert();
	$("#membersByProviderModalContent").html("");

	var providerId = $(this).attr("data-providerId");

	$.ajax("/getMembersByProvider?modal=&providerId="+providerId, {

		success: function(data) { 
				$("#membersByProviderModalContent").html(data);
				$("#membersByProviderModal").modal("show");
		},
		error: function(data) {

			showAlert("No se pudieron obtener los integrantes.", "alert-error");
		}
	});
});

$("[name='itemsByJob']").on('click', function(){

	clearAlert();
	$("#itemsByJobModalContent").html("");

	var jobId = $(this).attr("data-jobId");

	$.ajax("/itemsByJob?modal=&jobId="+jobId, {

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

	$.ajax("/othersByJob?modal=&jobId="+jobId, {

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

	var dataUri = $("#yesBtnDel").attr("data-uri");

	$("#yesBtnDel").attr("href", dataUri+"&copId="+copId);

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
			showAlert("Ocurió un error al intentar recuperar el formulario de edición.", "alert-error");
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
			showAlert("Ocurió un error al intentar recuperar el formulario de edición.", "alert-error");
		}
	});
});

$("[name='deleteJob']").on('click', function() {

	var jobId = $(this).attr("data-jobId");

	var dataUri = $("#yesBtnDel").attr("data-uri");

	$("#yesBtnDel").attr("href", dataUri+"?jobId="+jobId);

	$("#deleteModal").modal('show');
});

function magicLogic(map, _that) {
    var mapping = ($(_that).attr("data-copType") === "0") ? map.cop : map.job;
    var stepSuffix = mapping.stepSuffix;
    var action = mapping.action;
    var step = nextStep(stepSuffix);
    var id = -1;
    if(step.length > 0)
        id = step[0].id;
    switch (id) {
        case 'step2':
        case 'step2end':
        case 'step2Edit':
        case 'step2endEdit':
            var form = $(mapping.formSelector);

            form.submit(function() {
	return false;
            }); // ignorar el submit comun

            var btn = $("[name='submitBtn']"); // forzar la validacion estandar
            btn[0].click();

            if (form[0].checkValidity()) {
	activateStep(step, stepSuffix, action);

	var queryString = $(mapping.formSelector).serialize();

	$.ajax(mapping.createUri + queryString, {
	    success: function(data) {

	        var divContenedor = $('<div/>', {class: 'span12'});
	        var divRow = $('<div/>', {class: 'row-fluid'});
	        var divFormulario = $('<div/>', {
	            class: 'span5',
	            style: 'max-width: 440px; margin-right: 10px;'
	        });
	        var divListado = $('<div/>', {
	            id: mapping.divItems,
	            class: 'span7',
	            style: 'margin-left: 0px; padding-left: 0px; overflow-x: auto; min-height: 430px; min-width: 730px;'
	        });

	        $.ajax(mapping.formUri + data, {
	            async: false,
	            success: function(d1) {
		var form = $(d1);
		divFormulario.html(form);
		interceptSubmit(form, divFormulario.html(), mapping.divItemsSelector, mapping.formListSelector);
	            },
	            error: function() {
		showAlert("Ocurió un error al intentar recuperar el formulario.", "alert alert-error");
	            }
	        });

	        $.ajax(mapping.listUri + data, {
	            async: false,
	            success: function(d2) {
		divListado.html(d2);
	            },
	            error: function() {
		showAlert("Ocurió un error al intentar recuperar el listado.", "alert alert-error");
	            }
	        });

	        divRow.append(divFormulario);
	        divRow.append(divListado);
	        divContenedor.append(divRow);

	        $(mapping.formContentSelector).html(divContenedor);

	    },
	    error: function() {
	        showAlert("Ocurió un error al intentar recuperar el formulario.", "alert alert-error");
	    }
	});
            }
            break;
        case 'end':
        case 'endEdit':
	activateStep(step, stepSuffix, action);
	var jobId = document.getElementById('hiddenJobId').innerHTML;
	$(mapping.formContentSelector).html('');
	        var divContenedor = $('<div/>', {class: 'span12'});
	        var divRow = $('<div/>', {class: 'row-fluid'});
	        var divFormulario = $('<div/>', {
	            class: 'span5',
	            style: 'max-width: 440px; margin-right: 10px;'
	        });
	        var divListado = $('<div/>', {
	            id: mapping.divItems,
	            class: 'span7',
	            style: 'margin-left: 0px; padding-left: 0px; overflow-x: auto; min-height: 430px; min-width: 730px;'
	        });

	        $.ajax(mapping.formOthersUri + jobId, {
	            async: false,
	            success: function(d1) {
		var form = $(d1);
		divFormulario.html(form);
		
		    $.ajax(mapping.formOthersUri + jobId, {
		        async: false,
		        success: function(d1) {
		            var form = $(d1);
		            divFormulario.html(form);

		            var itemsContainer = mapping.divItemsSelector, formListSelector = mapping.formOther;
		            
		            var el = form.find(formListSelector);
		            el.submit(function() {
			$.post($(formListSelector).attr("action"), $(formListSelector).serialize(), function(data) {
			    $(itemsContainer).html(data);
			    $.ajax(mapping.formOthersUri + jobId, {
			        async: false,
			        success: function(h) {
			            var h = $(h).find(formListSelector).html();
			            el.html(h);
			        },
			        error: function() {
			            showAlert("Ocurió un error al intentar recuperar el formulario.", "alert alert-error");
			        }
			    });
			    
			});
			return false;
		            });
		            
		            
		        },
		        error: function() {
		            showAlert("Ocurió un error al intentar recuperar el formulario.", "alert alert-error");
		        }
		    });
		
		
		interceptSubmit(form, divFormulario.html(), mapping.divItemsSelector, mapping.formOther);
	            },
	            error: function() {
		showAlert("Ocurió un error al intentar recuperar el formulario.", "alert alert-error");
	            }
	        });

	        $.ajax(mapping.listOthersUri + jobId, {
	            async: false,
	            success: function(d2) {
		divListado.html(d2);
	            },
	            error: function() {
		showAlert("Ocurió un error al intentar recuperar el listado.", "alert alert-error");
	            }
	        });

	        divRow.append(divFormulario);
	        divRow.append(divListado);
	        divContenedor.append(divRow);

	        $(mapping.formContentSelector).html(divContenedor);
            break;
    }
}
;

$("#createNext").on('click', function() {
    var mapping = {
        job: {
            "formSelector": "#formCreateJob",
            "createUri": "/createJob?",
            "formUri": "/getItemsForm?jobId=",
            "listUri": "/itemsByJob?jobId=",
            "formOthersUri": "/getOthersForm?jobId=",
            "listOthersUri": "/othersByJob?jobId=",
            "formContentSelector": "#createFormContent",
            "divItems": "divItemsByJobCreate",
            "divItemsSelector": "#divItemsByJobCreate",
            "formListSelector": "#itemsForm",
            "formOther": "#formOther",
            "stepSuffix": "",
            "action": "create"
        },
        cop: {
            "formSelector": "#formCreateCop",
            "createUri": "/createCop?",
            "formUri": "/getMembersForm?providerId=",
            "listUri": "/getMembersByProvider?providerId=",
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
            "formOthersUri": "/getOthersForm?jobId=",
            "listOthersUri": "/othersByJob?jobId=",
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
            "formUri": "/getMembersForm?providerId=",
            "listUri": "/getMembersByProvider?providerId=",
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

function registerOthersFunctions(jobId) {
    $("[name='other-remove']").off('click');
    $("[name='other-remove']").on('click', function() {
        var otherId = $(this).attr("data-otherId");

        $.ajax("/deleteOther?otherId=" + otherId + "&jobId=" + jobId, {
            success: function(data) {
	    $("#listOthersContainer").replaceWith(data);
            },
            error: function() {
	showAlert("No se pudieron obtener los artículos.", "alert-error");
            }
        });

    });
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

function registerMembersFunctions(providerId) {
    $("[name='member-remove']").off('click');
    $("[name='member-remove']").on('click', function() {
        var memberId = $(this).attr("data-memberId");

        $.ajax("/deleteMember?memberId=" + memberId + "&providerId=" + providerId, {
            success: function(data) {
	    $("#listMembersContainer").replaceWith(data);
            },
            error: function() {
	showAlert("No se pudieron obtener los integrantes.", "alert-error");
            }
        });

    });
}

$('#deleteModal, #createFormModal, #editFormModal').on('hide', function () {
	location.reload();
});

$(document).ready(function() {

	var copType = document.getElementById('copType').innerHTML;
	document.getElementById('copType-' + copType).className = 'active';

	var el = document.getElementById('alta');	
	el.innerHTML = '<a id="create" data-copType="'+copType+'" href="#"><i class="icon-plus-sign"></i> Nuevo</a>';

	$("#create").on('click', create);
	
	$("[name='view']:last").addClass("last-drop-down");

	$(".dropdown-menu:last").addClass("last-drop-down");
});