@IsTest
public with sharing class DonationTriggerTest {

    @IsTest
    public static void testInsert() {

        // Note that this is a simple example illustating inserting an object with no mandatory fields
        // This example can be adaptect based on requirements of objects in your org
        My_Object__c mo = new My_Object__c();
        insert mo;
        System.assert(mo.Id != null);
    }
}
