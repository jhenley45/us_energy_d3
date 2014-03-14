$(document).ready(function(){
	$.get('/studies.json')
    .success(function(data) {
    	console.log('success')
    	debugger
    });
});
