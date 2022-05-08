/**
 * 
 */
function validateForm() {
  var x = document.forms["empform"]["fName"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
}