<?php
$module = isset ( $_REQUEST ['module'] ) ? $_REQUEST ['module'] : defaultmodule;
?>

<?php
$arr = array (
		"user" => "USER",
		"import" => "IMPORT",
		"inout" => "IN-OUT",
		"export" => "EXPORT",
		"spend" => "SPEND",
		"config" => "CONFIG",
		"news" => "NEWS",
		"report" => "REPORT",
		"provider" => "PROVIDER",
		"customer" => "CUSTOMER",		
		"fund" => "FUND" 
);

foreach ( $arr as $value => $key ) {
	if ($value == $module) {
		echo "<input type='button' value='" . $key . "' class='menu_btn active_btn' onclick='goToPage(\"" . $value . "&submenu=search\");' /><br>";
	} else {
		echo "<input type='button' value='" . $key . "' class='menu_btn' onclick='goToPage(\"" . $value . "&submenu=search\");' /><br>";
	}
}
?>
