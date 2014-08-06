{* DO NOT EDIT THIS FILE! Use an override template instead. *}

<div class="block">
<label>{'Default number of rows'|i18n( 'design/standard/class/datatype' )}:</label>
<input type="text" name="ContentClass_smilematrix_default_num_rows_{$class_attribute.id}" value="{$class_attribute.data_int1|wash}"  size="8" maxlength="20" />
</div>

<div class="block">
<fieldset>
<legend>{'Columns'|i18n( 'design/standard/class/datatype' )}</legend>

{section show=$class_attribute.content.columns}
<table class="list" cellspacing="0">
<tr>
    <th class="tight">&nbsp;</th>
    <th>{'Matrix column'|i18n( 'design/standard/class/datatype' )}</th>
    <th>{'Identifier'|i18n( 'design/standard/class/datatype' )}</th>
</tr>
{section var=Columns loop=$class_attribute.content.columns sequence=array( bglight, bgdark )}
<tr class="{$Columns.sequence}">

    {* Remove. *}
    <td><input type="checkbox" name="ContentClass_data_smilematrix_column_remove_{$class_attribute.id}[]" value="{$Columns.index}" /></td>

    {* Column. *}
    <td><input class="box" type="text" name="ContentClass_data_smilematrix_column_name_{$class_attribute.id}[]" value="{$Columns.item.name|wash}" size="10" maxlength="255" /></td>

    {* Identifier. *}
    <td><input class="box" type="text" name="ContentClass_data_smilematrix_column_id_{$class_attribute.id}[]" value="{$Columns.item.identifier|wash}" size="10" maxlength="255" /></td>

</tr>
{/section}
</table>
{section-else}
<p>
{'The matrix does not have any columns.'|i18n( 'design/standard/class/datatype' )}
</p>
{/section}

{if $class_attribute.content.columns}
<input class="button" type="submit" name="CustomActionButton[{$class_attribute.id}_remove_selected]" value="{'Remove selected'|i18n('design/standard/class/datatype')}" title="{'Remove selected columns.'|i18n( 'design/standard/class/datatype' )}" />
{else}
<input class="button-disabled" type="submit" name="CustomActionButton[{$class_attribute.id}_remove_selected]" value="{'Remove selected'|i18n('design/standard/class/datatype')}" disabled="disabled" />
{/if}

<input class="button" type="submit" name="CustomActionButton[{$class_attribute.id}_new_smilematrix_column]" value="{'New column'|i18n('design/standard/class/datatype')}" title="{'Add a new column.'|i18n( 'design/standard/class/datatype' )}" />
</fieldset>
</div>
