<script type="text/javascript">

$(document).ready(function(){
	var ac_config_import_facture = {
		source: "autocomplete/completed_import_facture_code.php",
		select: function(event, ui){
			$("#import_facture_code").val(ui.item.code);
			$("#description").val(ui.item.description);
			$("#provider_name").val(ui.item.provider_name);
			$("#provider_id").val(ui.item.provider_id);
			$("#continueImport").val("true");
		},
		minLength:1
	};
	$("#import_facture_code").autocomplete(ac_config_import_facture);
});
</script>
<form method="post" action="?module=import&submenu=addproduct" onsubmit="return validateImportForm();">
	<label>Facture Code : </label><input name="import_facture_code" id="import_facture_code" value="<?php echo $importService->getImportFactureCode();?>"/><?php echo tab4;?>
	<label>Provider : </label><input name="provider_name" id="provider_name" /><input type="hidden" name="provider_id" id="provider_id" /><?php echo tab4;?>
	<label>Description : </label><input name="description" id="description" /><?php echo tab4;?>
	<input type="hidden" name="continueImport" id="continueImport" value="false"/>
	<label>Season : </label><input name="season" id="season" /><?php echo tab4;?>
	<?php $rowNum = $_SESSION ['import_number_row'];?>
	<input type="submit" value="IMPORT">
	<hr>
	<table width="100%" border="0" cellspacing="0" cellpadding="2" style="border-collapse: collapse;">
  <tbody>
     <tr style="text-align: center;font-weight:bold;">
      <td>Code</td>
      <td>Name</td>
      <td>Qty</td>
      <td>Post</td>
      <td>ImPr</td>
      <td>Sex</td>
      <td>Category</td>
      <td>Brand</td>
      <td>Description</td>
    </tr>       
    <?php for ($i=1;$i<=$rowNum;$i++) { ?>
    <tr>
    <td><input name="code_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="7" value="<?php echo $importService->currentMaxProductCode($i);?>"/></td>
    <td><input name="name_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="40"/></td>
    <td><input name="qty_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="7"/></td>
    <td><input name="post_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="7"/></td>
    <td><input name="impr_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="7"/></td>
    <td><input name="sex_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="7"/></td>
    <td><input name="category_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="20"/></td>
    <td><input name="brand_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="15"/></td>
    <td><input name="description_<?php echo $i;?>" id="code_<?php echo $i;?>" autocomplete="off" size="40"/></td>
    </tr>
    <?php 
    }?>
   
    </tbody>
  </table>
	
</form>