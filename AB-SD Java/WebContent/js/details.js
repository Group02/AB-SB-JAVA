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
