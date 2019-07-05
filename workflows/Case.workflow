<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Reopen_Date_Time_Now</fullName>
        <field>Reopen_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Reopen Date/Time = Now</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Reopen Date%2FTime</fullName>
        <actions>
            <name>Reopen_Date_Time_Now</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>!IsClosed &amp;&amp; PRIORVALUE(IsClosed) = true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
