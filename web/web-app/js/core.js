
$("[name='itemsByJob']").on('click', function(){

	$("#itemsByJobModalContent").html("");
	$("#notifications").removeClass("alert");
	$("#notifications").removeClass("alert-error");

	var jobId = $(this).attr("data-jobId");

	$.ajax("/itemsByJob?jobId="+jobId, {

		success: function(data) { 

			if (data === "") {

				$("#notifications").html("Este trabajo no tiene artículos cargados.");
				$("#notifications").addClass("alert");
			}
			else {

				$("#itemsByJobModalContent").html(data);
				$("#itemsByJobModal").modal("show");
			}
		},
		error: function(data) {

			$("#notifications").html("No se pudieron obtener los artículos.");
			$("#notifications").addClass("alert alert-error");
		}
	});
});

$("[name='othersByJob']").on('click', function(){

	$("#othersByJobModalContent").html("");
	$("#notifications").removeClass("alert");
	$("#notifications").removeClass("alert-error");

	var jobId = $(this).attr("data-jobId");

	$.ajax("/othersByJob?jobId="+jobId, {

		success: function(data) { 

			if (data === "") {

				$("#notifications").html("Este trabajo no tiene terceros cargados.");
				$("#notifications").addClass("alert");
			}
			else {

				$("#othersByJobModalContent").html(data);
				$("#othersByJobModal").modal("show");
			}
		},
		error: function(data) {

			$("#notifications").html("No se pudieron obtener los terceros.");
			$("#notifications").addClass("alert alert-error");
		}
	});
});

$("[name='deleteCop']").on('click', function() {

	var copId = $(this).attr("data-copId");

	var dataUri = $("#yesBtn").attr("data-uri");

	$("#yesBtn").attr("href", dataUri+"&copId="+copId);

	$("#deleteModal").modal('show');
});

$("[name='deleteJob']").on('click', function() {

	var jobId = $(this).attr("data-jobId");

	var dataUri = $("#yesBtn").attr("data-uri");

	$("#yesBtn").attr("href", dataUri+"?jobId="+jobId);

	$("#deleteModal").modal('show');
});

$(document).ready(function() {

	var pathname = window.location.pathname.replace('\/', '');
	if (pathname === '')
	    pathname = 'listar-trabajos';
	document.getElementById(pathname).className = 'active';
});