/**
 * 
 */
window.onload = execute;
function execute(){
	document.querySelector('#go_admin').onclick=showAlert;
	document.querySelector('#go_join').onclick=goJoinPage;
	document.querySelector('#home_text').onclick=goHome;
}
function showAlert(){
	var admin = confirm('관리자?');
	if(admin){
		alert('안녕하세요 관리자님');
		location.href="burgerking/main.jsp";
	}else{
		alert('관리자만 접근가능 합니다');
	}
}
function goJoinPage(){
	var member = confirm('회원이 아니신가요?');
	if(member){
		location.href = "member/join.jsp";
	}else{
		location.href ="#";
	}
}
function goHome(){
	location.href="#";
}
