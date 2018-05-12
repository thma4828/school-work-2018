var url = 'https://api.forecast.io/forecast/APIKEY/40.014984,-105.270546'
$.ajax({url:url, dataType:"jsonp"}).then(function(data)
	{ console.log(data)

})

 