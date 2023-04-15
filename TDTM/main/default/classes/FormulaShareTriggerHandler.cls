global class FormulaShareTriggerHandler extends npsp.TDTM_Runnable {

    global override npsp.TDTM_Runnable.DmlWrapper run(List<SObject> newlist, List<SObject> oldlist, npsp.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult) {
        sdfs.FormulaShareHelper helper = new sdfs.FormulaShareHelper();
        insert helper.getSharesToInsert();
        delete helper.getSharesToDelete();
        return null;
    }
}