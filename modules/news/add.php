<?php
$id = $_REQUEST['id'];
if ($id == null) {
?>
<form>
<table width="100%" class="addcriteriatable">
<input type="hidden" id="idhidden"/>
	<tr>
		<td style="text-align: right;">Description :</td>
		<td><textarea id="news_description" value="Ý kiến của bạn"
			onfocus="if (this.value == this.defaultValue) this.value = ''"
			onblur="if (this.value == '') this.value = this.defaultValue"
			rows="4" cols="80">Ý kiến của bạn</textarea></td>
		<td style="text-align: right;"></td>
	</tr>
	<tr>
		<td style="text-align: right;"></td>
		<td colspan="2"><input type="button" class="menu_btn_sub"
			value="ADD NEWS" onclick="addNews();"><input type="button"
			class="menu_btn_sub" value="SHOW SEARCH"
			onclick="toggleDiv('searchNewsAreaId');toggleDiv('addNewsAreaId');"></td>
		<td></td>
	</tr>
</table>
</form>
<?php } 
else {
?>
<form>
<table width="100%" class="addcriteriatable">
	<input type="hidden" id="idhidden" value="<?php echo $_REQUEST['id'];?>"/>
	<tr>
		<td style="text-align: right;">Description :</td>
		<td><textarea id="news_description"
			rows="4" cols="80"><?php echo $_REQUEST['description'];?></textarea></td>
		<td style="text-align: right;"></td>
	</tr>
	<tr>
		<td style="text-align: right;"></td>
		<td colspan="2"><input type="button" class="menu_btn_sub"
			value="UPDATE NEWS" onclick="addNews();"><input type="button"
			class="menu_btn_sub" value="SHOW SEARCH"
			onclick="toggleDiv('searchNewsAreaId');toggleDiv('addNewsAreaId');"></td>
		<td></td>
	</tr>
</table>
</form>
<?php }?>