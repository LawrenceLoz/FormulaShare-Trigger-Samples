trigger MyObjectTrigger on My_Object__c (after insert, after update, after delete, after undelete) {
	FormulaShareHelper helper = new FormulaShareHelper();
    insert helper.getSharesToInsert();
    delete helper.getSharesToDelete();
}