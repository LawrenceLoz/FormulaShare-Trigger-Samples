@IsTest
public with sharing class FormulaShareTriggerHandlerTest {

    @TestSetup
    public static void setup() {
        // Retrieve default NPSP Trigger Handlers
        List<npsp__Trigger_Handler__c> triggerHandlers = npsp.TDTM_Config_API.getCachedRecords();

        // Add our Trigger Handler to cached Trigger Handlers
        npsp__Trigger_Handler__c th = new npsp__Trigger_Handler__c();
        th.Name = 'MyFSTriggerHandler';
        th.npsp__Class__c = 'FormulaShareOpportunityTriggerHandler';
        th.npsp__Object__c = 'Opportunity';
        th.npsp__Trigger_Action__c = 'AfterInsert;AfterUpdate;';
        th.npsp__Active__c = true;
        th.npsp__Load_Order__c = 1;
        th.npsp__Asynchronous__c = false;
        insert th;
    }

    @IsTest
    public static void testInsert() {
        Opportunity opp = new Opportunity();
        opp.Name = 'FormulaShare test';
        opp.StageName = 'Prospecting';
        opp.CloseDate = System.today();
        insert opp;
        System.assert(opp.Id != null);
    }

}