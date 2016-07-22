
$(document).ready(function(){
	
	//handling tabs
	$("#tabs ul li").click(function(){
		
		$("#tabs ul li").removeClass('active');
		
		var current_index = $("#tabs ul li").index(this);
		
		$("#tabs ul li:eq("+current_index+")").addClass("active");
		$("#tabs div").hide();
		$("#tabs div:eq("+current_index+")").fadeIn(100);	
	});
	
	//When mouse focus
	$("input").focus(function(){
		$(this).css("border-color" , "red");
	});
	
	//When mouse leaves
	$("input").mouseleave(function(){
		$(this).css("border-color" , "#0067FF");
	});
	
});

//handling input
function addDirForm(){
	
	if(checkBUName()){
		if(checkAddr()){
			if(checkPostcode()){
				if (checkTypeBusiness()) {
					if (checkPhoneNumber()) {
						if (checkEmail()){
							return true;
							}
						}
					}
				}
			}
		}
	}

//check directorate name
function checkBUName(){
	var BUName = document.getElementById("DirName").value;
	
	if (BUName == null || BUName == "") {
		document.getElementById("DirName").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the Directorate Name!";
		return false;
	}
	
		document.getElementById("DirName").style.border = "1px solid #0067FF";
		return true;
}

//check address
function checkAddr(){
	var address = document.getElementById("address").value;
	
	if (address == null || address == "") {
		document.getElementById("address").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the address!";
		return false;
	}

		document.getElementById("address").style.border = "1px solid #0067FF";
		return true;
}

//check postcode
function checkPostcode() {
	var postcode = document.getElementById("postcode").value;
	
	if (postcode == null || postcode == "") {
		document.getElementById("postcode").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please enter the postcode!";
		return false;
	}
	
		document.getElementById("postcode").style.border = "1px solid #0067FF";
		return true;
	
}

//check type of business
function checkTypeBusiness() {
	var typeBusiness = document.getElementById("typeBusiness").value;
	
	if (typeBusiness == null || typeBusiness == "") {
		document.getElementById("typeBusiness").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the type of business!";
		return false;
	}
	
		document.getElementById("typeBusiness").style.border = "1px solid #0067FF";
		return true;
}	

//check phone number
function checkPhoneNumber() {
	var phoneNumberVal = /(09\d{8})|(((01)|(07))\d{9})/;

	if (!phoneNumberVal.test(phoneNumber)) {
		document.getElementById("phoneNumber").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Sorry, System can't recognize the phone number!";
		return false;
	}
		
		document.getElementById("phoneNumber").style.border = "1px solid #0067FF";
		return true;
}

//check validation of email
function checkEmail() {
	var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

	if (!emailPattern.test(email)) {
		document.getElementById("email").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Sorry, System doesn't recognize that email.";
		return false;
		
	} 
		document.getElementById("email").style.border = "1px solid #0067FF";
		return true;
}


