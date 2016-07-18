
$(document).ready(function(){
	
	//handling tabs
	$("#tabs ul li").click(function(){
		
		$("#tabs ul li").removeClass('active');
		
		var current_index = $("#tabs ul li").index(this);
		
		$("#tabs ul li:eq("+current_index+")").addClass("active");
		$("#tabs div").hide();
		$("#tabs div:eq("+current_index+")").fadeIn(100);	
	});
	
	//handling input
	var org = false;
	var descr = false;
	var addr = false;
	var postcode = false;
	var business = false;
	var phone = false;
	
	//When mouse focus
	$("input").focus(function(){
		$(this).css("border-color" , "red");
	});
	
	//When mouse leaves
	$("input").mouseleave(function(){
		$(this).css("border-color" , "#0067FF");
	});
		
	$("#save").click(function(){
				
		//test organisation name
			if($("#orgName").val()==""){
				$("#error").html('<div id="error" style="color:red">Please input the organisation name!</div>');
				$("#orgName").focus();
				$("#orgName").scrollIntoView();
			}else{
				$("#error").html('<div id="error"></div>');
				org = true;
			}
		
		//test organisation short description 
			if($("#orgShortDescr").val()==""){
				$("#error").html('<div id="error" style="color:red">Please input the short description!</div>');
				$("#orgShortDescr").focus();
				$("#orgShortDescr").scrollIntoView();
			}else{
				$("#error").html('<div id="error" style="color:red"></div>');
				descr = true;
			}
	
		//test type of business
			if($("#typeBusiness").val()==""){
				$("#error").html('<div id="error" style="color:red">Please input the type of Business!</div>');
				$("#typeBusiness").focus();
				$("#typeBusiness").scrollIntoView();
			}else{
				$("#error").html('<div id="error"></div>');
				business = true;
			}
			
		//test address line 1
			if($("#address").val()==""){
				$("#error").html('<div id="error" style="color:red">Please input the address line 1!</div>');
				$("#address").focus();
				$("#address").scrollIntoView();
			}else{
				$("#error").html('<div id="error"></div>');
				addr = true;
			}
			
		//test postcode
			if($("#postcode").val()==""){
				$("#error").html('<div id="error" style="color:red">Please input the postcode!</div>');
				$("#postcode").focus();
				$("#postcode").scrollIntoView();
			}else{
				$("#error").html('<div id="error"></div>');
				postcode = true;
			}
	
		//Test phone number
				if($("#phoneNumber").val()==""){
					$("#error").html('<div id="error" style="color:red">Please input the phone number!</div>');
					$("#phoneNumber").focus();
					$("#phoneNumber").scrollIntoView();
				}else{
					$("#error").html('<div id="error"></div>');
					
					//Test validation of phone number
					var phoneNumber = /(09\d{8})|(((01)|(07))\d{9})/;
					
						if(!phoneNumber.test($("#phoneNumber").val())){
							$("#error").html('<div id="error" style="color:red">The Phone number is invalid. Please typing again! </div>');
							$("#phoneNumber").focus();
							$("#phoneNumber").scrollIntoView();	
						}else{
							$("#error").html('<div id="error"></div>');
							phone = true;
						}
					}
		});	
});
