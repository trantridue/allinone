/* COMMON FUNCTION */
// VERIFY IF A FIELD IS BLANK BY INPUT OF IT'S ID
function validateBlankField(fieldid) {
	if ($("#" + fieldid).val() == "" || $("#" + fieldid).val() == null) {
		$("#" + fieldid).addClass("errorField");
		if (fieldid == "provider_id")
			$("#provider_name").addClass("errorField");
		return false;
	} else {
		$("#" + fieldid).removeClass("errorField");
		if (fieldid == "provider_id")
			$("#provider_name").removeClass("errorField");
		return true;
	}
}
function validateBlankLabel(fieldid) {
	if ($("#" + fieldid).html() == "" || $("#" + fieldid).html() == null) {
		$("#" + fieldid).addClass("errorField");
		return false;
	} else {
		$("#" + fieldid).removeClass("errorField");
		return true;
	}
}
function displayMessageServer(data, errorMessage, successMessage, module) {
	if (data && data != '') {
		$('#listArea').load("modules/" + module + "/list.php?isdefault=false&loadall=true");
		$('#serverMessage').html(successMessage);
		$('#serverMessage').addClass('successMessage');
		$('#serverMessage').removeClass('errorMessage');
	} else {
		$('#serverMessage').html(errorMessage);
		$('#serverMessage').addClass('errorMessage');
		$('#serverMessage').removeClass('successMessage');
	}
}
// VERIFY IF THE FIELD VALUE RESPECT THE REGULAR EXPRESSSION
function validateField(reg, fieldid) {
	if (!reg.test($("#" + fieldid).val())) {
		$("#" + fieldid).addClass("errorField");
		return false;
	} else {
		$("#" + fieldid).removeClass("errorField");
		return true;
	}
}
// VERIFY MATCHED PASSWORD WITH RETYPE-PASSWORD BY INPUT THE ID OF TWO FIELDS
function validatePassword(passwordid, repasswordid) {
	if (!($("#" + passwordid).val() == $("#" + repasswordid).val())) {
		$("#" + passwordid).addClass("errorField");
		$("#" + repasswordid).addClass("errorField");
		return false;
	} else {
		$("#" + passwordid).removeClass("errorField");
		$("#" + repasswordid).removeClass("errorField");
		return true;
	}
}
/* USER MODULE */
function userpostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " user error";
	if (actionType == 'passwordnotmatch') {
		errorMessage = "Password not match, please re-type!";
	} else if (actionType == 'emailerror') {
		errorMessage = "Email format not correct, please try again!";
	}
	var successMessage = actionType + " user successful";

	displayMessageServer(data, errorMessage, successMessage, "user");
}


/* IMPORT MODULE */
function validateImportForm() {
	var flag = true;
	var flagRowWrong = true;
	var flg_provider_name = true;
	var flg_description = true;
	var dataRow = 0;
	var totalRow = $("#totalRow").val();
	var atLeastOneNotNul = false;
	var allNotNull = false;
	// validate the blank field
	var flg_import_facture_code = validateBlankField("import_facture_code");
	var flg_provider_name = validateBlankField("provider_name");
	var flg_provider_id = validateBlankField("provider_id");
	var flg_description = validateBlankField("description");
	var flg_season = validateBlankField("season");

	flag = flg_import_facture_code && flg_provider_name && flg_description
			&& flg_provider_id && flg_season;
	// validate product line
	for (var i = 1; i <= totalRow; i++) {
		var code = '#code_' + i;
		var name = '#name_' + i;
		var qty = '#qty_' + i;
		var post = '#post_' + i;
		var impr = '#impr_' + i;

		codeval = $(code).val();
		nameval = $(name).val();
		qtyval = $(qty).val();
		postval = $(post).val();
		imprval = $(impr).val();

		if (codeval != '' && nameval != '') {
			dataRow++;
		}
		$("#dataRow").val(dataRow);

		allNotNull = !(nameval != '' && qtyval != '' && postval != '' && imprval != '');
		atLeastOneNotNul = (nameval != '' || qtyval != '' || postval != '' || imprval != '');

		if (allNotNull && atLeastOneNotNul) {
			$(name).addClass("errorField");
			$(qty).addClass("errorField");
			$(impr).addClass("errorField");
			$(post).addClass("errorField");
			flagRowWrong = false;
		} else {
			$(name).removeClass("errorField");
			$(qty).removeClass("errorField");
			$(impr).removeClass("errorField");
			$(post).removeClass("errorField");
		}
	}
	if ($("#dataRow").val() == '0') {
		alert("Please add some product!");
		flagdata = false;
	}
	return flagRowWrong && flag && flagdata;
	// return true;
}
function returnimportpostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " product error";
	var successMessage = actionType + " product successful";
	displayMessageServer(data, errorMessage, successMessage, "product");
	listProduct();
	document.getElementById("returnproductForm").reset();
}
function updatesalepostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " product error";
	var successMessage = actionType + " product successful";
	displayMessageServer(data, errorMessage, successMessage, "product");
	listProduct();
}
function updateproductpostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " product error";
	var successMessage = actionType + " product successful";
	displayMessageServer(data, errorMessage, successMessage, "product");
	listProduct();
}
function productimportpostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " product import error";
	var successMessage = actionType + " product import successful";
	displayMessageServer(data, errorMessage, successMessage, "import");
}
/* PROVIDER MODULE */
function providerpostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " Provider error";
	if (actionType == 'passwordnotmatch') {
		errorMessage = "Password not match, please re-type!";
	} else if (actionType == 'emailerror') {
		errorMessage = "Email format not correct, please try again!";
	}
	var successMessage = actionType + " provider successful";
	displayMessageServer(data, errorMessage, successMessage, "provider");
}
function validateEditProviderForm() {
	var nameReg = /^(?!\s*$).+$/;
	var telReg = /^[0-9]{9,12}$/;

	var flag1 = validateField(nameReg, 'provider_address');
	var flag2 = validateField(nameReg, 'provider_name');
	var flag3 = validateField(telReg, 'provider_tel');

	return flag1 && flag2 && flag3;
}
/* CUSTOMER MODULE */
function customerpostaction(data, actionType) {
	$('#serverMessage').show();
	var errorMessage = actionType + " Customer error";
	if (actionType == 'passwordnotmatch') {
		errorMessage = "Password not match, please re-type!";
	} else if (actionType == 'emailerror') {
		errorMessage = "Email format not correct, please try again!";
	}
	var successMessage = actionType + " customer successful";
	displayMessageServer(data, errorMessage, successMessage, "customer");
}
function validateEditCustomerForm() {
//	alert('dđ');
	var nameReg = /^(?!\s*$).+$/;
	var telReg = /^[0-9]{9,12}$/;

	var flag2 = validateField(nameReg, 'customer_name');
	var flag3 = validateField(telReg, 'customer_tel');

	return flag2 && flag3;
}
