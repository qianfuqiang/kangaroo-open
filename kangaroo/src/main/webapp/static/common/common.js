jQuery.extend({
	getAjaxJsonData:function(url, parameters, successCallback){
		var nowdate = new Date();
		$.ajax({
			type: 'GET',
			dataType: "json",
			url: url,
			cache:false,
			data: parameters,
			success: successCallback,
            beforeSend:function(){
            	 $("body").mask("正在处理请稍等...");
		    },
		    complete: function(){
		    	$("body").unmask();
		    },
			error:function(){
				alert('加载失败');
				$("body").unmask();
			}
		});
	}
});

