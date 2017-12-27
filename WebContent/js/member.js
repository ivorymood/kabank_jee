/**
 * 
 */
window.addEventListener("load", init, false);
function init(){
	document.querySelector('#add_member_btn').addEventListener("click", addMember, false);
}
function addMember(e){
	alert('클릭');
	location.href="add_member.jsp";
}

