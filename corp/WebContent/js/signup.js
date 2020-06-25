
var isCheckedUsername = false;

// DB에 ajax 요청을 해서 중복 유저네임이 있는지 확인하고 
// 있으면 1 리턴, 없으면 0을 리턴, 오류는 -1
function checkUsername(){
	
	//성공시
	var tfUsername = $('#username').val();
	
//	alert(tfUsername);
	console.log(tfUsername);
	$.ajax({
		type : 'get',
		url : `/corp/user?cmd=usernameCheck&username=${tfUsername}`
	}).done(function(result){
		console.log(result);
		if(result == 1){
			alert('이미 사용중인 아이디입니다.');
		}else if(result == 0){
			alert('사용하실 수 있는 아이디입니다.');
			isCheckedUsername = this;
		}else{
			console.log('서버오류');
		}
	}).fail(function(error){
		consol.log(error);
	});
	isCheckedUsername = true;
}

//중복체크 함수 
function validate(){
	if (!isCheckedUsername) {
		alert('username 중복체크를 해주세요')
	}return isCheckedUsername;
}
//주소
function goPopup(){
	var pop = window.open("/corp/juso/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
	var tfAddress = document.querySelector("#address");
	tfAddress.value = roadFullAddr;
	
	// document.form.roadFullAddr.value = roadFullAddr;		
}