function listUser() {
	var isdefault = "false";
	var username = $('#user_name_id').val();
	var url = "modules/user/list.php" + "?username=" + username + "&isdefault="
			+ isdefault;
	$('#listArea').load(url);
}

function deleteuser(userid) {
	var deleteuser = 'modules/user/deleteuser.php?userid=' + userid;
	$.ajax({
		url : deleteuser,
		success : function(data) {
			afterdeleteuser(data);
		}
	});
}

function afterdeleteuser(data) {
	$('#serverMessage').show();
	if (data) {
		$('#listArea').load("modules/user/list.php?isdefault=false");
		$('#serverMessage').html('Successful');
		$('#serverMessage').addClass('successMessage');
	} else {
		$('#serverMessage').html('Error');
		$('#serverMessage').addClass('errorMessage');
	}
}

function edituser(str) {
	
	alert(inputUrl);
	var url = 'modules/user/edituser.php?' + inputUrl;
	$('#inputArea').load(url);
}
function processUrlString(str) {
	var key = new Array();
	var value = new Array();
	key = str.split("&");
	var inputUrl = "";
	for (i in key) {
		value[i] = encodeURIComponent(key[i].split("=")[1]);
		key[i] = key[i].split("=")[0];
	}
	for (i in key) {
		inputUrl = inputUrl + key[i] + "=" + value[i] + "&";
	}
}
