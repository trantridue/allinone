<?php 
if($commonService->isAdmin()) {?>
<div id=mainFund>
<div id="topFund">
	<div id="exchangeFund"><?php include 'exchangeFund.php';?></div>
	<div id="addFund"><?php include 'addFund.php';?></div>
	<div id="searchFund" style="display: none;"><?php include 'search.php';?></div>
	<div id="editFund" style="display: none;"></div>
</div>
<div id="bottomFund">
	<div id="listFund"><?php include 'listFund.php';?></div>
	<div id="histoFund"><?php include 'list.php';?></div>
</div>
</div>

<?php } else {
	include 'common/errorpage.php';
}?>