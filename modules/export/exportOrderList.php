<hr>
<div class="titlecss">Danh sách hàng đặt </div>
<?php
$isdefault = $_REQUEST ['isdefault'];
$isSearch = $_REQUEST ['issearch'];
if ($isdefault == "false") {
	require_once ("../../include/constant.php");
	require_once ("../../include/exportService.php");
	require_once ("../../include/commonService.php");
	
	$commonService = new CommonService ();
	$exportService = new ExportService ( hostname, username, password, database, $commonService );
	if($isSearch == 'true') {
		$exportService->listOrder ( $_GET );
	} else {
		$exportService->listOrderDefault ();
	}
} else {
	$exportService->listOrderDefault ();
}
?>
