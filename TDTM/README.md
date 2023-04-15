# TDTM Trigger Handlers

NPSP and EDA utilise the TDTM trigger framework.

Classes in this folder can be deployed and used as a trigger handler class for any objects which should call FormulaShare.

The class FormulaShareTriggerHandler is object agnostic - trigger handlers for any object can be set up in NPSP/EDA to call this class. TDTM trigger handlers should call the class in the following contexts:
 - After insert
 - After update
 - After delete
 - After undelete

Note that the test class FormulaShareTriggerHandlerTest is an example of a test class which could be used to provide coverage for FormulaShareTriggerHandler for Opportunity sharing. It would be best to adapt this to test one or more objects where trigger handlers will be set up in your org.