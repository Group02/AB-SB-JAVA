<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function setValue (s){
    window.opener.document.getElementById('details').value = s;
    window.close();
}

function popupCenter(url, title) {
	var left = (screen.width/2)-(225);
	var top = (screen.height/2)-(225);
	window.open(url,title,'toolbar=no, location=no, directories=no,status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=450, height=450, top='+top+', left='+left);
	document.getElementById('frame').style.opacity="0.5";
	if(window.close()){
		document.getElementById('frame').style.opacity="1";
	}
	} 
	

// document.getElementById('da').addEventListener('click', function(){
// //     window['dd'] = document.getElementById('dd');
    
// //     var win = window.open('businesslookup.html', "sadsadasl", width, height, "menubar=0,toolbar=0");
// 	document.getElementById("demo").innerHTML = "Hello World";
// });

function OpenDialog(url, width, height)
	{
		var left = (screen.width/2)-(225);
		var top = (screen.height/2)-(225);
		window['dd'] = document.getElementById('dd');
	    var win = window.open(url, "sadsadasl", width, height, "menubar=0,toolbar=0");
	    document.getElementById('dd').value = window['dd'].value;
	    
	    
// 	    window.opener.callback(true);
	}


</script>
</head>
<body>
<div id="frame">
	<a href="addresslookup.html">addressLookup</a>
<a href="<%=request.getContextPath()%>/business/businesslookup.html">businessLookup</a>

<input type="text" id="dd">
<a  onclick="OpenDialog('businesslookup.html',450,450)" href="javascript:void(0);">nbmnbm</a>

<a  href="contactlookup.html">contactLookup</a>
<div id="demo"></div>
</div>
</body>
</html>