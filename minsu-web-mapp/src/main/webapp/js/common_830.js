$(function(){
	// 输入框交互
	var u = navigator.userAgent;
	$(".j_ipt").each(function(){
		var index = $(this).parents(".c_ipt_li").index();
		var self = $(".c_ipt_li:eq("+index+")");
		var top = self.offset().top;
		$(this).on({
			input:function(){

				if($.trim($(this).val()).length != 0 ){
					$(this).parents(".c_ipt_li").removeClass("c_ipt_li_none");
					$(this).siblings(".icon_clear").show();

				}else{
					$(this).parents(".c_ipt_li").addClass("c_ipt_li_none");
				}
				if($(this).attr("data-type") == "name"){
					autoResize($(this).attr("id"));
				}
				if($(this).attr("data-type") == "address"){
					autoResize($(this).attr("id"));
					getPoint();
				}
			},
			blur:function(){
				if($.trim($(this).val()).length != 0 ){
					
					$(this).parents(".c_ipt_li").removeClass("c_ipt_li_none");
					if($(this).attr("data-type") == "area"){
						if($(this).val().indexOf("m²") == -1){
							$(this).val($(this).val()+"m²");
						}
					}
					if($(this).attr("data-type") == "price"){
						if($(this).val().indexOf("元") == -1){
							$(this).val($(this).val()+"元");
						}
					}
					
					
				}else{
					$(this).parents(".c_ipt_li").addClass("c_ipt_li_none");
					$(this).val($(this).val());
				}
				if(u.indexOf('Android') > -1 || u.indexOf('Linux') > -1){
					$(".bodys").animate({scrollTop:0}, 50);
					setTimeout(function(){
						self.parents(".myCenterList").css({'height':'auto'});
					},50)

				}
				
			},
			focus:function(){
				$(this).parents(".c_ipt_li").siblings().find(".icon_clear").hide();
				if($.trim($(this).val()).length != 0 ){
					$(this).siblings(".icon_clear").show();

				}else{
					$(this).siblings(".icon_clear").hide();
				}
				//android终端或者uc浏览器
				if(u.indexOf('Android') > -1 || u.indexOf('Linux') > -1){
					
					if(top > 100){
						self.parents(".myCenterList").css({'height':'2000px'});
						setTimeout(function(){
							$(".bodys").animate({scrollTop:top-100}, 50);
						},50)
					}
					
				}
				
				if($(this).attr("data-type") == "area"){
					if($(this).val().indexOf("m²") > -1){
						$(this).val($(this).val().replace("m²",""));
					}
				}
				if($(this).attr("data-type") == "price"){
					if($(this).val().indexOf("元") > -1){
						$(this).val($(this).val().replace("元",""));
					}
				}
			}
		})
})
$(".icon_clear").each(function(){
	$(this).click(function(){
		$(this).parents(".c_ipt_li").addClass("c_ipt_li_none");
		$(this).siblings(".c_ipt").val("");
		$(this).hide();
		console.log($(this).siblings(".c_ipt").attr("data-type"));
		if($(this).siblings(".c_ipt").attr("data-type") == "address"){
			getPoint();
		}
	})
})
})
function setValToInputDate(obj,id){
	var val=$(obj).val();
	$(obj).parents(".c_ipt_li").removeClass("c_ipt_li_none");
	$('#'+id).val(val);
}
function setValToInput(obj,id){
	var val=$(obj).val();
	var txt =  $(obj).find("option:selected").text();
	$(obj).parents(".c_ipt_li").removeClass("c_ipt_li_none");
	$('#'+id).val(txt);
}
function setTextToInput(obj,id,text){
	var txt = $(obj).find("option:selected").text()+text;
	$(obj).parents(".c_ipt_li").removeClass("c_ipt_li_none");
	$('#'+id).val(txt);
}

var minRows = 1;
// 最大高度，超过则出现滚动条
var maxRows = 2;
function autoResize(id){
	var t = document.getElementById(id);
	var t_li = $('#'+id).parents(".c_ipt_li");
	if (t.scrollTop == 0) t.scrollTop=1;
	if (t.scrollTop == 0){
		if (t.rows > minRows)
			t.rows--;t_li.css({'height':'2.7rem'});
		
		t.scrollTop = 1;
	}
	if(t.scrollTop > 0){
		if (t.rows < maxRows)
			t.rows++;t_li.css({'height':'auto'});
		if (t.scrollTop == 0) t.scrollTop=1;
		
	}
}
$(function(){
	$(".j_ipt").each(function(){
		if($(this).attr("data-type") == "name"){
			autoResize($(this).attr("id"));
		}
		if($(this).attr("data-type") == "address"){
			autoResize($(this).attr("id"));
		}
	})
	
})