/**
 * 
 */

function openTab(evt, tabName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(tabName).style.display = "block";
	evt.currentTarget.className += " active";
}

function openTab3() {
	if(document.getElementById("expressOfInterest").checked) {
		document.getElementById("tablink3").style.display = "block";
	} else {
		document.getElementById("tablink3").style.display = "none";
	}
}

function onBackOrg() {
	if(confirm("Are you sure to back?")) {
		location = "list.html";
	}
}

function onCheckInActive() {
	var inActiveRows = document.getElementsByClassName("inActive-SM");
	
	if(document.getElementById("in-active-SM").checked) {
		for (i = 0; i < inActiveRows.length; i++) {
			inActiveRows[i].style.display = "table-row";
	    }
	} else {
		for (i = 0; i < inActiveRows.length; i++) {
			inActiveRows[i].style.display = "none";
	    }
	}
}

// Organisation Details Tab1:
function validateTab1() {
	var check = true;
	var numOfFail = 0;
	
	// Check organisation name:
	var orgName = document.getElementById("orgName").value;
	if(orgName == null || orgName == "") {
		document.getElementById("orgName").style.borderColor = "red";
		document.getElementById("st_orgName").innerHTML = "Please input Organisation Name";
		check = false;
		numOfFail++;
	}
	
	// Check short description:
	var shortDescr = document.getElementById("shortDescr").value;
	if(shortDescr == null || shortDescr == "") {
		document.getElementById("shortDescr").style.borderColor = "red";
		document.getElementById("st_drs").innerHTML = "Please input Short Description";
		check = false;
		numOfFail++;
	}
	
	// Check Address:
	var addressLine = document.getElementById("addressLine").value;
	if(addressLine == null || addressLine == "") {
		document.getElementById("addressLine").style.borderColor = "red";
		document.getElementById("st_addr").innerHTML = "Please input Address";
		check = false;
		numOfFail++;
	}
	
	// Check short Postcode:
	var postcode = document.getElementById("postcode").value;
	if(postcode == null || postcode == "") {
		document.getElementById("postcode").style.borderColor = "red";
		document.getElementById("st_postcode").innerHTML = "Please input Postcode";
		check = false;
		numOfFail++;
	}
	
	// Check Type Of Business:
	var businessName = document.getElementById("businessName").value;
	if(businessName == null || businessName == "") {
		document.getElementById("businessName").style.borderColor = "red";
		document.getElementById("st_business").innerHTML = "Please choose Type of Business";
		check = false;
		numOfFail++;
	}
	
	// Check phoneNumber:
	var phoneNumber = document.getElementById("phoneNumber").value;
	if(phoneNumber == null || phoneNumber == "") {
		document.getElementById("phoneNumber").style.borderColor = "red";
		document.getElementById("st_phone").innerHTML = "Please input Phone Number";
		check = false;
		numOfFail++;
	}
	
	// Input success:
	if(numOfFail == 0) {
		// Reset error
		document.getElementById("st_orgName").innerHTML = null;
		document.getElementById("st_drs").innerHTML = null;
		document.getElementById("st_addr").innerHTML = null;
		document.getElementById("st_postcode").innerHTML = null;
		document.getElementById("st_business").innerHTML = null;
		document.getElementById("st_phone").innerHTML = null;
		
		// Reset border:
		document.getElementById("orgName").style.borderColor = "#0067FF";
		document.getElementById("shortDescr").style.borderColor = "#0067FF";
		document.getElementById("addressLine").style.borderColor = "#0067FF";
		document.getElementById("postcode").style.borderColor = "#0067FF";
		document.getElementById("businessName").style.borderColor = "#0067FF";
		document.getElementById("phoneNumber").style.borderColor = "#0067FF";
		
		document.getElementById("success").innerHTML = "Save success.";
	}
	
	return false;
}

// Supporting Materials:
function opCreateSM() {
	document.getElementById("sm-details").style.display = "block";
	document.getElementById("tab5").style.display = "none";
}

function onModifySM(rowId, frameID) {
	var description = document.getElementById(rowId).cells[1].innerHTML;
	var type = document.getElementById(rowId).cells[2].innerHTML;
	
	document.getElementById(frameID).style.display = "block";
	
	document.getElementById("url").value = rowId;
	document.getElementById("newURL").value = rowId;
	document.getElementById("description").value = description;
	document.getElementById("type").value = type;
	
	document.getElementById("tab5").style.display = "none";
}

function onBack() {
	document.getElementById("url").value = "";
	document.getElementById("description").value = "";
	document.getElementById("sm-details").style.display = "none";
	
	document.getElementById("tab5").style.display = "block";
}
// ==============================================

/* ============== POPUP ============== */
function openPopup(popupID) {
	document.getElementById(popupID).style.display = "block";
}

function openPopup(popupID) {
	document.getElementById(popupID).style.display = "block";
}

function closePopup(popupID) {
	document.getElementById(popupID).style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

// Storage data in local 
$(document).ready(function(){
    document.getElementById("test").value = localStorage.getItem("item1");
});

$(window).on('beforeunload', function() {
    localStorage.setItem("item1",document.getElementById("test").value);
});
