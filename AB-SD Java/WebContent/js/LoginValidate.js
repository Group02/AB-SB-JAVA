function validateForm() {
	
	if (checkEmail()) {
		if (checkPassword()) {
			return true;
		}
	}

	return false;

}

function checkEmail() {
	var email = document.getElementById("email").value;
	
	if (email == null || email == "") {
		document.getElementById("error").innerHTML = "Please enter your email.";

		return false;
	} else {
		var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

		if (!emailPattern.test(email)) {
			document.getElementById("error").innerHTML = "Sorry, System doesn't recognize that email.";

			return false;
		}
	}
	
	return true;
}

function checkPassword() {
	var password = document.getElementById("password").value;
	
	if (password == null || password == "") {
		document.getElementById("error").innerHTML = "Please enter your password.";

		return false;
	}

	return true;
}
