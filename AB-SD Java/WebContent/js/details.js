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
	document.getElementById("sm-details").style.display = "none";
	evt.currentTarget.className += " active";
}

function onBackOrg() {
	if(confirm("Are you sure to back?")) {
		location = "list.html";
	}
}

function onCreate(id) {
	document.getElementById(id).style.display = "block";
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
function onModifySM(rowId, frameID) {
	var description = document.getElementById(rowId).cells[1].innerHTML;
	var type = document.getElementById(rowId).cells[2].innerHTML;
	
	document.getElementById(frameID).style.display = "block";
	
	document.getElementById("url").value = rowId;
	document.getElementById("description").value = description;
	document.getElementById("type").value = type;
}

function onBack() {
	document.getElementById("url").value = "";
	document.getElementById("description").value = "";
	document.getElementById("sm-details").style.display = "none";
}
// ==============================================