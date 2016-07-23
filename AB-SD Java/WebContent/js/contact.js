function checkEmpty(a){
  if (a == "") return true;
  return false;
}

function solve(line, element){
  document.getElementById("error").innerHTML=line;
  document.getElementById("error").style.color="red"; 
  document.getElementById(element).style.border="2px solid red";
}

function save(){
  firstName = document.getElementById("firstName").value;
  surName   = document.getElementById("surName").value;
  contactType = document.getElementById("contactType");
  value = contactType.options[contactType.selectedIndex].value;
  if (checkEmpty(firstName)) solve("Please input the firstname","firstName");
  else
    if (checkEmpty(surName)) solve("Please input the surname", "surName");
    else
      if (checkEmpty(value)) solve("please input the contact type", "contactType")
      else{
        document.forms[0].submit;
      }
}