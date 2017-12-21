/**
 * 
 */
window.onload = execute;
function execute(){
	document.querySelector('#header_home').onclick = goHome;
	document.querySelector('#header_logout').onclick = logOut;
	document.querySelector('#burgerking_main').onclick=goBurgerkingMain;
	document.querySelector('#kakao_main').onclick=goKakaoMain;
	document.querySelector('#sktelecom_main').onclick=goSktelecomMain;
	document.querySelector('#lotto_main').onclick=goLottoMain;
	document.querySelector('#bitcamp_main').onclick=goBitcampMain;
	document.querySelector('#footer_bit').onclick = goBitcamp;
}
function goHome(){
	location.href="../index.jsp";
}
function logOut(){
	location.href="../index.jsp";
}
function goBurgerkingMain(){
	location.href="../burgerking/main.jsp";
}
function goKakaoMain(){
	location.href="../kakao/main.jsp";
}
function goSktelecomMain(){
	location.href="../sktelecom/main.jsp";
}
function goLottoMain(){
	location.href="../lotto/main.jsp";
}
function goBitcampMain(){
	location.href="../bitcamp/main.jsp";
}
function goBitcamp(){
	location.href="http://bitcamp.co.kr/index.php?main_page=home";
}