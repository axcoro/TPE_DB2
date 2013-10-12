
$("[name='jobRow']").on('click', function(){

	var jobId = $(this).attr("data-jobId");

	$.ajax("/itemsByJob?jobId="+jobId, {

		success: function(data) { $("#itemsTable").html(data); },

		error: function(data) { $("#itemsTable").html("No se pudieron obtener los artículos."); }
	});
});

$("[name='deleteCop']").on('click', function() {

	var copId = $(this).attr("data-copId");

	var dataUri = $("#yesBtn").attr("data-uri");

	$("#yesBtn").attr("href", dataUri+"&copId="+copId);

	$("#deleteModal").modal('show');
});

$(document).ready(function(){
    var pathname = window.location.pathname.replace('\/', '');
    document.getElementById(pathname).className = 'active';
});