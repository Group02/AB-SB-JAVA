$(document).ready(function() {

	// handling tabs
	$("#tabs ul li").click(function() {

		$("#tabs ul li").removeClass('active');

		var current_index = $("#tabs ul li").index(this);

		$("#tabs ul li:eq(" + current_index + ")").addClass("active");
		$("#tabs div").hide();
		$("#tabs div:eq(" + current_index + ")").fadeIn(100);
	});

	// When mouse focus
	$("input").focus(function() {
		$(this).css("border-color", "red");
	});

	// When mouse leaves
	$("input").mouseleave(function() {
		$(this).css("border-color", "#0067FF");
	});

	// change border color in textarea
	$('#save').click(function() {
		var content = $('textarea').text();
		if (content == "") {
			$('textarea').addClass('redBorder');
		} else {
			$('textarea').removeClass('redBorder');
		}
	});
});

// handling input
function addOrgForm() {

	if (checkOrgName()) {
		if (checkShortDesrc()) {
			if (checkAddress()) {
				if (checkPostcode()) {
					if (checkTypeBusiness()) {
						if (checkPhoneNumber()) {
							if (checkEmail()) {
								return true;
							}
						}
					}
				}
			}
		}
	}

	return false;
}

// check organisation name
function checkOrgName() {
	var orgName = document.getElementById("orgName").value;

	if (orgName == null || orgName == "") {
		document.getElementById("orgName").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the Organisation Name!";
		return false;
	} else {
		document.getElementById("orgName").style.border = "1px solid #0067FF";
		return true;
	}

}

// check organisation short description
function checkShortDesrc() {
	var shortDescr = document.getElementById("shortDescr").value;

	if (shortDescr == null || shortDescr == "") {
		document.getElementById("shortDescr").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the short description!";
		return false;
	} else {
		document.getElementById("shortDescr").style.border = "1px solid #0067FF";
		return true;
	}

}

// check type of business
function checkTypeBusiness() {
	var typeBusiness = document.getElementById("typeBusiness").value;

	if (typeBusiness == null || typeBusiness == "") {
		document.getElementById("typeBusiness").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the type of business!";
		return false;
	} else {
		document.getElementById("typeBusiness").style.border = "1px solid #0067FF";
		return true;
	}
}

// check address
function checkAddress() {
	var address = document.getElementById("address").value;

	if (address == null || address == "") {
		document.getElementById("address").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please enter the address!";
		return false;
	} else {
		document.getElementById("address").style.border = "1px solid #0067FF";
		return true;
	}
}

// check postcode
function checkPostcode() {
	var postcode = document.getElementById("postcode").value;

	if (postcode == null || postcode == "") {
		document.getElementById("postcode").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please enter the postcode!";
		return false;
	} else {
		document.getElementById("postcode").style.border = "1px solid #0067FF";
		return true;
	}

}

// check phone number
function checkPhoneNumber() {
	var phoneNumber = document.getElementById("phoneNumber").value;

	if (phoneNumber == null || phoneNumber == "") {
		document.getElementById("phoneNumber").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Please input the phone number!";
		return false;
	} else {
		var phoneNumberVal = /(09\d{8})|(((01)|(07))\d{9})/;

		if (!phoneNumberVal.test(phoneNumber)) {
			document.getElementById("phoneNumber").style.border = "2px solid red";
			document.getElementById("error").innerHTML = "Sorry, System can't recognize the phone number!";
			return false;
		}

		else {
			document.getElementById("phoneNumber").style.border = "1px solid #0067FF";
			return true;
		}
	}
}

// check validation of email
function checkEmail() {
	var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

	if (!emailPattern.test(email)) {
		document.getElementById("email").style.border = "2px solid red";
		document.getElementById("error").innerHTML = "Sorry, System doesn't recognize that email.";
		return false;

	} else {
		document.getElementById("email").style.border = "1px solid #0067FF";
		return false;
	}
	/*
	 * document.getElementById("phoneNumber").style.border = "1px solid
	 * #0067FF"; document.getElementById("error").innerHTML = "Sorry, System
	 * can't recognize the phone number!";
	 * 
	 * return false; } }
	 */

	return true;
}
