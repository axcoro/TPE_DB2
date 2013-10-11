
$("[name='jobRow']").on('click', function(){

	var jobId = $(this).attr("data-jobId");

	$.ajax("/itemsByJob?jobId="+jobId, {

		success: function(data) { $("#itemsTable").html(data); },

		error: function(data) { $("#itemsTable").html("No se pudieron obtener los artículos."); }
	});
});