<script type="text/javascript">
function resetContinue(){ 
	$("#continueImport").val(false);
}
function updateAllImportPrice(nbrRow) {
	var discount = $('#default_discount_taux').val();
	for(var index = 1; index <=nbrRow;index++) {
		var expr =  $('#post_'+index).val();
		if($('#post_'+index).val() != '' && $('#post_'+index).val() != null) {
			var impr = Math.floor((100-discount)*expr/100);
			$('#impr_' + index).val(impr);
		}
	}
	calculateImportFacture();
}
</script>
<script>
window.onbeforeunload = function() { return "You work will be lost."; };
</script>
<?php 
$importService->loadDefaultSeason();
if(!isset($_SESSION)){  session_start(); }
?>
<form method="post" action="?module=import&submenu=addproduct"
	onsubmit="return validateImportForm();">
	<table class="searchcriteriatable">
	<input type="hidden" name="continueImport" id="continueImport"	value="false" />
	<tr>
		<td align="right">FACTURE CODE </td>
		<td><input onkeydown="resetContinue();"
		name="import_facture_code" id="import_facture_code"
		value="<?php echo $importService->getImportFactureCode();?>" /></td>
		<td align="right">PROVIDER </td>
		<td><input name="provider_name" onkeypress="resetProviderId();"
		id="provider_name" /><input type="hidden" name="provider_id"
		id="provider_id" /></td>
		<td align="right">SEASON </td>
		<td><input name="season"
		id="season" value="<?php echo $_SESSION['default_season_name'];?>" /><input
		name="season_id" id="season_id" type="hidden"
		value="<?php echo $_SESSION['default_season_id'];?>" /><?php echo tab4;?>
	<?php $rowNum = $_SESSION ['import_number_row'];?></td>
		<td align="right">SALE % </td>
		<td><input name="sale" id="sale" size="3" maxlength="2" onkeypress="validateNum(event);"/></td>
	</tr>
	<tr>
		<td align="right">DESCRIPTION </td>
		<td><textarea name="description" id="description" cols="40" rows="3"></textarea></td>
		<td align="right">Paid days </td>
		<td><input type="text" maxlength="3" size="6" class="datefield" autocomplete="off" name="deadline"> </td>
		<td align="right">Paid in </td>
		<td colspan="3"><input type="text" maxlength="3" size="6" onkeypress="validateNum(event);" name="number_day_paid" autocomplete="off"> </td>
		
	</tr>
	<tr>
		<td><input type="submit" value="IMPORT" class="menu_btn_sub"> </td>
		<td colspan="7"><input id="total_facture" value="0.00" onkeypress="validateNon(event);"/> 
		<label for="default_discount_taux">Discount:</label>
		<input type="number" style="width:50px" id="default_discount_taux" value="<?php echo $_SESSION['default_discount_taux'];?>" 
		onchange="updateAllImportPrice(<?php echo $_SESSION ['import_number_row'];?>);"/>
		 </td>
	</tr>
	</table>
		<hr>
	<table  class="searchcriteriatable"
		style="border-collapse: collapse;">
		<tbody>
			<tr style="text-align: center; font-weight: bold;">
				<td width="8%">Code</td>
				<td>Name</td>
				<td width="5%">Qty</td>
				<td width="5%">Post</td>
				<td width="5%">ImPr</td>
				<td width="5%">Sex</td>
				<td width="8%">Category</td>
				<td width="8%">Brand</td>
				<td>Description</td>
			</tr>       
    <?php for ($i=1;$i<=$rowNum;$i++) { ?>
    <tr>
				<td><input name="code_<?php echo $i;?>" id="code_<?php echo $i;?>" onkeypress="resetExisted('<?php echo $i;?>');"
					autocomplete="off" size="5"
					value="<?php echo $importService->currentMaxProductCode($i);?>" />
					<input type="hidden" name="isExisted_<?php echo $i;?>"
					id="isExisted_<?php echo $i;?>" value="false" /></td>
				<td><input class="product_name" name="name_<?php echo $i;?>" tabindex="<?php echo $i + $rowNum*1;?>"
					id="name_<?php echo $i;?>" autocomplete="off" size="40" /></td>
				<td><input type="number" name="qty_<?php echo $i;?>" id="qty_<?php echo $i;?>" tabindex="<?php echo $i + $rowNum*2;?>"
				onchange="calculateImportFacture();" onkeypress="validateFloat(event);"
					autocomplete="off" class="number50"/></td>
				<td><input name="post_<?php echo $i;?>" id="post_<?php echo $i;?>"
				onchange="updateImportPrice(<?php echo $i;?>);"
				onkeypress="validateFloat(event);"  tabindex="<?php echo $i + $rowNum*3;?>"
					autocomplete="off" type="number" class="number50"/></td>
				<td><input name="impr_<?php echo $i;?>" id="impr_<?php echo $i;?>" onchange="calculateImportFacture();" tabindex="<?php echo $i + $rowNum*4;?>" 
				onkeypress="validateFloat(event);" type="number" class="number50"
					autocomplete="off"  /></td>
				<td><div id="sex_<?php echo $i;?>" name="sex_<?php echo $i;?>"  tabindex="<?php echo $i + $rowNum*5;?>"
						class="sex_woman" onclick="changeSex('<?php echo $i;?>');">WOMAN</div>
					<input type="hidden" name="sex_value_<?php echo $i;?>"
					id="sex_value_<?php echo $i;?>" value="1" /></td>
				<td><input name="category_<?php echo $i;?>" onkeypress="resetCategoryId('<?php echo $i;?>');"  tabindex="<?php echo $i + $rowNum*6;?>"
					id="category_<?php echo $i;?>" autocomplete="off" size="10" value="VAY"/>
					<input type="hidden" name="category_id_<?php echo $i;?>"
					id="category_id_<?php echo $i;?>" value="1" />
					</td>
				<td><input name="brand_<?php echo $i;?>" value="MADEVN" onkeypress="resetBrandId('<?php echo $i;?>');"  tabindex="<?php echo $i + $rowNum*7;?>"
					id="brand_<?php echo $i;?>" autocomplete="off" size="10"/>
					<input type="hidden" name="brand_id_<?php echo $i;?>"
					id="brand_id_<?php echo $i;?>" value="1" />
					</td>
				<td><input name="description_<?php echo $i;?>"  tabindex="<?php echo $i + $rowNum*8;?>"
					id="description_<?php echo $i;?>" autocomplete="off" size="40" />
					
					</td>
			</tr>
    <?php
				}
				?>
   
    </tbody>
	</table>
	<input type="hidden" id="totalRow" name="totalRow" value="<?php echo $rowNum;?>"/>
	<input type="hidden" id="dataRow" name="dataRow" value="0"/>
</form>
<script type="text/javascript">
$(document).ready(function() {
    $("#import_facture_code").focus(function() { $(this).select(); } );
    $("#season").focus(function() { $(this).select(); } );
    $("#description").focus(function() { $(this).select(); } );
    $("#provider_name").focus(function() { $(this).select(); } );
});			
<?php for ($i=1;$i<=$rowNum;$i++) { ?>

$(document).ready(function() {
    $("#code_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#name_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#impr_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#category_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#brand_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#description_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#qty_<?php echo $i;?>").focus(function() { $(this).select(); } );
    $("#post_<?php echo $i;?>").focus(function() { $(this).select(); } );
});

	$(document).ready(function(){
	var ac_config_product_code_<?php echo $i;?> = {
		source: "autocomplete/completed_import_products_code.php",
		select: function(event, ui){
			$("#code_<?php echo $i;?>").val(ui.item.code);
			$("#name_<?php echo $i;?>").val(ui.item.name);
			$("#post_<?php echo $i;?>").val(ui.item.post);
			$("#sex_value_<?php echo $i;?>").val(ui.item.sex_id);
			$("#sex_<?php echo $i;?>").html(ui.item.sextext);
			$("#sex_<?php echo $i;?>").addClass(ui.item.sexoldclass);
			$("#sex_<?php echo $i;?>").removeClass(ui.item.sexnewclass);
			$("#impr_<?php echo $i;?>").val(ui.item.impr);
			$("#category_<?php echo $i;?>").val(ui.item.category);
			$("#category_id_<?php echo $i;?>").val(ui.item.category_id);
			$("#brand_<?php echo $i;?>").val(ui.item.brand);
			$("#brand_id_<?php echo $i;?>").val(ui.item.brand_id);
			$("#description_<?php echo $i;?>").val(ui.item.description);
			$("#isExisted_<?php echo $i;?>").val("true");
			calculateImportFacture();
		},
		minLength:1
	};
	$("#code_<?php echo $i;?>").autocomplete(ac_config_product_code_<?php echo $i;?>);
});

	$(document).ready(function(){
		var ac_config_category_<?php echo $i;?> = {
			source: "autocomplete/completed_import_category.php",
			select: function(event, ui){
				$("#category_<?php echo $i;?>").val(ui.item.code);
				$("#category_id_<?php echo $i;?>").val(ui.item.category_id);
			},
			minLength:1
		};
		$("#category_<?php echo $i;?>").autocomplete(ac_config_category_<?php echo $i;?>);
	});
	$(document).ready(function(){
		var ac_config_brand_<?php echo $i;?> = {
			source: "autocomplete/completed_import_brand.php",
			select: function(event, ui){
				$("#brand_<?php echo $i;?>").val(ui.item.code);
				$("#brand_id_<?php echo $i;?>").val(ui.item.brand_id);
			},
			minLength:1
		};
		$("#brand_<?php echo $i;?>").autocomplete(ac_config_brand_<?php echo $i;?>);
	});
	<?php }?>
	function updateImportPrice(index) {
		var discount = $('#default_discount_taux').val();
		var expr =  $('#post_'+index).val();
		var impr = Math.floor((100-discount)*expr/100);
		$('#impr_' + index).val(impr);
		calculateImportFacture();
	}
	</script>
	