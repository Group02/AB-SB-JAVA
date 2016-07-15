function validateForm() {
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value;

	if (checkEmail(email)) {
		if (checkPassword(password)) {
			return true;
		}
	}

	return false;

}

function checkEmail(email) {
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

function checkPassword(password) {
	if (password == null || password == "") {
		document.getElementById("error").innerHTML = "Please enter your password.";

		return false;
	}

	return true;
}
