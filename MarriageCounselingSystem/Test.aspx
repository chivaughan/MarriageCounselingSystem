<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="MarriageCounselingSystem.Test" %>

<%@ Register Assembly="obout_Interface" Namespace="Obout.Interface" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Take Test - Marriage Counseling System</title>
<meta name="keywords" content="wedding, marriage, marriage counseling system" />
<meta name="description" content="Online Marriage Counseling System helps you decide whether to get married or stay single" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-1.6.4.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
    function clearText(field) {
        if (field.defaultValue == field.value) field.value = '';
        else if (field.value == '') field.value = field.defaultValue;
    }
</script>

<script type= "text/javascript">
// This function displays the first view as the page  loads
    function SetDefaultViewIndex() {
        // Display only the first view
        
        $('#divYourAge').hide();
        $('#divYourPartnersAge').hide();
        $('#divYourPartnersWorkStatus').hide();
        $('#divYourAnnualIncome').hide();
        $('#divYourPartnersAnnualIncome').hide();
        $('#divYourMBTI').hide();
        $('#divYourPartnersMBTI').hide();
        $('#divYouMarriedBefore').hide();
        $('#divYourPartnerMarriedBefore').hide();
        $('#divYouOwnAHouse').hide();
        $('#divYourPartnerOwnsAHouse').hide();
        $('#divYourNoOfDependentChildren').hide();
        $('#divYourPartnerNoOfDependentChildren').hide();
        $('#divYouHaveHealthInsurance').hide();
        $('#divYourPartnerHasHealthInsurance').hide();
        $('#divYourYearsSinceLastMarriage').hide();
        $('#divYourPartnerFinancialLiability').hide();
        $('#divNatureOfYourPartnersFinancialLiability').hide();
        $('#divWidowOrWidower').hide();
        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
        // Personality Test
        $('#divWantToTakePersonalityTest').hide();
        $('#divYourPersonalityTestAttitude').hide();
        $('#divYourPersonalityTestInformationGathering').hide();
        $('#divYourPersonalityTestDecisionMaking').hide();
        $('#divYourPersonalityTestLifestyle').hide();
        $('#divPartnerWantToTakePersonalityTest').hide();
        $('#divYourPartnerPersonalityTestAttitude').hide();
        $('#divYourPartnerPersonalityTestInformationGathering').hide();
        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
        $('#divYourPartnerPersonalityTestLifestyle').hide();
        $('#divTestComplete').hide();
    }
    
</script>
<script type="text/javascript">
// This script contains the question rules
    var yourWorkStatus;
    var yourPartnersWorkStatus;
    var youMarriedBefore;
    var yourPartnerMarriedBefore;
    var yourPartnersWorkStatus;
    var yourAge = 0;
    var yourPartnerFinancialLiability;
    var widowOrWidower;
    var yourMBTI;
    var yourPartnersMBTI;
    var wantToTakePersonalityTest;
    var partnerWantToTakePersonalityTest;
    //Variables for the div and input radio button
    var div;
    var inputs
    function SendAnswer(divName) {
        div = document.getElementById(divName);
        inputs = div.getElementsByTagName("input");
        switch (divName) {

            case 'divYourWorkStatus':
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].checked) {
                        // Fetch the value of the selected radio button
                        yourWorkStatus = inputs[i].value;
                    }
                }
                if (yourWorkStatus == 'Employed') {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').show();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
                else {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').show();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }

            case 'divYourAnnualIncome':
                inputs = document.getElementById('txtYourAnnualIncome')
                if (inputs.value != '' && inputs.value >= 200000 && inputs.value <= 100000000) {
                    // Display the appropriate view only
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').show();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
                else {
                //Display an error message if the user does not enter any value
                    alert('Please enter your annual income\nYour annual income must be in the range 200000 to 100000000'); 
                    return;
                }

               

            case 'divYouHaveHealthInsurance':
                //for (var i = 0; i < inputs.length; i++) {
                   // if (inputs[i].checked) {
                    // Display the appropriate view only
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').show();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                   // }
               // }


            case 'divYourPartnersWorkStatus':
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].checked) {
                        // Fetch the value of the selected radio button
                        yourPartnersWorkStatus = inputs[i].value;
                    }
                }
                if (yourPartnersWorkStatus == 'Employed') {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').show();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;

                }
                else {
                    $('#divYourAge').show();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
            case 'divYourPartnersAnnualIncome':
                
                    inputs = document.getElementById('txtYourPartnersAnnualIncome')
                    if (inputs.value != '' && inputs.value >= 200000 && inputs.value <= 100000000) {
                        // Display the appropriate view only
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').show();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                    else {
                        //Display an error message if the user does not enter any value
                        alert('Please enter your partners annual income\nYour partners annual income must be in the range 200000 to 100000000');
                        return;
                    }
              
            case 'divYourPartnerHasHealthInsurance':
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].checked) {
                        // Display the appropriate view only
                        $('#divYourAge').show();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                }

            case 'divYourAge':
                inputs = document.getElementById('txtYourAge');
                if (inputs.value != '' && inputs.value >= 18 && inputs.value <= 120) {
                    yourAge = inputs.value;
                    // Display the appropriate view only
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').show();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
                else {
                // Display an error message
                    alert('Please enter your age\nYour age must be in the range 18 to 120');
                    return;
                }
            case 'divYourPartnersAge':
                inputs = document.getElementById('txtYourPartnersAge');
                    if (inputs.value != '' && inputs.value >= 18 && inputs.value <= 120) {                    
                        // Display the appropriate view only
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').show();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                    else {
                        // Display an error message
                        alert('Please enter your partners age\nYour partners age must be in the range 18 to 120');
                        return;
                    }
                case 'divYouOwnAHouse':
                    for (var i = 0; i < inputs.length; i++) {
                       if (inputs[i].checked) {
                            // Display the appropriate view only
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').show();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;
                        }
                    }

                case 'YourPartnerOwnsAHouse':
                    //for (var i = 0; i < inputs.length; i++) {
                      // if (inputs[i].checked) {
                            // Display the appropriate view only
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').show();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;
                       //}
                   //}
                case 'divYouMarriedBefore':
                    for (var i = 0; i < inputs.length; i++) {
                        if (inputs[i].checked) {
                            // Fetch the value of the selected radio button
                            youMarriedBefore = inputs[i].value;
                        }
                    }
                    if (youMarriedBefore == 'Yes') {
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').show();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    }
                    else {
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').show();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    }
                case 'divYourYearsSinceLastMarriage':
                    inputs = document.getElementById('txtYourYearsSinceLastMarriage');
                    if (inputs.value != '' && inputs.value >= 0 && inputs.value <= 50) {
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').show();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                    else {
                        alert('Please enter the number of years since your last marriage\nThe no of years must be in the range 0 to 50');
                        return;
                    }
                case 'divYourNoOfDependentChildren':
                    inputs = document.getElementById('txtYourNoOfDependentChildren');
                    if (inputs.value != '' && inputs.value >= 0 && inputs.value <= 20) {
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').show();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                    else {
                        alert('Please enter your number of dependent children\nYour number of dependent children must be in the range 0 to 20');
                        return;
                    }
            case 'divYourPartnerFinancialLiability':
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].checked) {
                        // Fetch the value of the selected radio button
                        yourPartnerFinancialLiability = inputs[i].value;
                    }
                }
                if (yourPartnerFinancialLiability == 'Yes') {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').show();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;

                }
                else {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').show();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
            case 'divNatureOfYourPartnersFinancialLiability':
                if (youMarriedBefore == 'Yes' && yourAge > 60) {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').show();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
                else {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').show();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }

            case 'divWidowOrWidower':
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].checked) {
                        // Fetch the value of the selected radio button
                        widowOrWidower = inputs[i].value;
                    }
                    if (widowOrWidower == 'Yes' && yourWorkStatus == 'Retired' && yourPartnersWorkStatus == 'Retired') {
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').show();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                    else {
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').show();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    }
                }

            case 'divYourPartnerMarriedBefore':
                for (var i = 0; i < inputs.length; i++) {
                    if (inputs[i].checked) {
                        // Fetch the value of the selected radio button
                        yourPartnerMarriedBefore = inputs[i].value;
                    }
                }
                if (yourPartnerMarriedBefore == 'Yes') {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').hide();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').show();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;

                }
                else {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').show();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
            case 'divYourPartnerNoOfDependentChildren':
                inputs = document.getElementById('txtYourPartnerNoOfDependentChildren');
                if (inputs.value != '' && inputs.value >= 0 && inputs.value <= 20) {
                    $('#divYourAge').hide();
                    $('#divYourWorkStatus').hide();
                    $('#divYourPartnersAge').hide();
                    $('#divYourPartnersWorkStatus').hide();
                    $('#divYourAnnualIncome').hide();
                    $('#divYourPartnersAnnualIncome').hide();
                    $('#divYourMBTI').show();
                    $('#divYourPartnersMBTI').hide();
                    $('#divYouMarriedBefore').hide();
                    $('#divYourPartnerMarriedBefore').hide();
                    $('#divYouOwnAHouse').hide();
                    $('#divYourPartnerOwnsAHouse').hide();
                    $('#divYourNoOfDependentChildren').hide();
                    $('#divYourPartnerNoOfDependentChildren').hide();
                    $('#divYouHaveHealthInsurance').hide();
                    $('#divYourPartnerHasHealthInsurance').hide();
                    $('#divYourYearsSinceLastMarriage').hide();
                    $('#divYourPartnerFinancialLiability').hide();
                    $('#divNatureOfYourPartnersFinancialLiability').hide();
                    $('#divWidowOrWidower').hide();
                    $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                    // Personality Test
                    $('#divWantToTakePersonalityTest').hide();
                    $('#divYourPersonalityTestAttitude').hide();
                    $('#divYourPersonalityTestInformationGathering').hide();
                    $('#divYourPersonalityTestDecisionMaking').hide();
                    $('#divYourPersonalityTestLifestyle').hide();
                    $('#divPartnerWantToTakePersonalityTest').hide();
                    $('#divYourPartnerPersonalityTestAttitude').hide();
                    $('#divYourPartnerPersonalityTestInformationGathering').hide();
                    $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                    $('#divYourPartnerPersonalityTestLifestyle').hide();
                    $('#divTestComplete').hide();
                    break;
                }
                else {
                    alert('Please enter your partners number of dependent children\nYour partners number of dependent children must be in the range 0 to 20');
                    return;
                }
                    
                case 'divYourPartnerSocialSecurityBenfitMoreThanYours':
                    
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').show();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourMBTI':
                        for (var i = 0; i < inputs.length; i++) {
                            if (inputs[i].checked) {
                                // Fetch the value of the selected radio button
                                yourMBTI = inputs[i].value;
                            }
                        }
                        if (yourMBTI == 'Dont Know') {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').show();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;

                        }
                        else {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').show();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;
                        }

                    case 'divWantToTakePersonalityTest':
                        for (var i = 0; i < inputs.length; i++) {
                            if (inputs[i].checked) {
                                // Fetch the value of the selected radio button
                                wantToTakePersonalityTest = inputs[i].value;
                            }
                        }
                        if (wantToTakePersonalityTest == 'Yes') {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').show();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;

                        }
                        else {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').show();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;

                        }
                    case 'divYourPersonalityTestAttitude':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').show();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourPersonalityTestInformationGathering':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').show();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourPersonalityTestDecisionMaking':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').show();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourPersonalityTestLifestyle':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').show();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;
                    case 'divYourPartnersMBTI':
                        for (var i = 0; i < inputs.length; i++) {
                            if (inputs[i].checked) {
                                // Fetch the value of the selected radio button
                                yourPartnersMBTI = inputs[i].value;
                            }
                        }
                        if (yourPartnersMBTI == 'Dont Know') {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').show();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;

                        }
                        else {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').show();
                            break;
                        }

                    case 'divPartnerWantToTakePersonalityTest':
                        for (var i = 0; i < inputs.length; i++) {
                            if (inputs[i].checked) {
                                // Fetch the value of the selected radio button
                                partnerWantToTakePersonalityTest = inputs[i].value;
                            }
                        }
                        if (partnerWantToTakePersonalityTest == 'Yes') {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').show();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').hide();
                            break;

                        }
                        else {
                            $('#divYourAge').hide();
                            $('#divYourWorkStatus').hide();
                            $('#divYourPartnersAge').hide();
                            $('#divYourPartnersWorkStatus').hide();
                            $('#divYourAnnualIncome').hide();
                            $('#divYourPartnersAnnualIncome').hide();
                            $('#divYourMBTI').hide();
                            $('#divYourPartnersMBTI').hide();
                            $('#divYouMarriedBefore').hide();
                            $('#divYourPartnerMarriedBefore').hide();
                            $('#divYouOwnAHouse').hide();
                            $('#divYourPartnerOwnsAHouse').hide();
                            $('#divYourNoOfDependentChildren').hide();
                            $('#divYourPartnerNoOfDependentChildren').hide();
                            $('#divYouHaveHealthInsurance').hide();
                            $('#divYourPartnerHasHealthInsurance').hide();
                            $('#divYourYearsSinceLastMarriage').hide();
                            $('#divYourPartnerFinancialLiability').hide();
                            $('#divNatureOfYourPartnersFinancialLiability').hide();
                            $('#divWidowOrWidower').hide();
                            $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                            // Personality Test
                            $('#divWantToTakePersonalityTest').hide();
                            $('#divYourPersonalityTestAttitude').hide();
                            $('#divYourPersonalityTestInformationGathering').hide();
                            $('#divYourPersonalityTestDecisionMaking').hide();
                            $('#divYourPersonalityTestLifestyle').hide();
                            $('#divPartnerWantToTakePersonalityTest').hide();
                            $('#divYourPartnerPersonalityTestAttitude').hide();
                            $('#divYourPartnerPersonalityTestInformationGathering').hide();
                            $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                            $('#divYourPartnerPersonalityTestLifestyle').hide();
                            $('#divTestComplete').show();
                            break;

                        }
                    case 'divYourPartnerPersonalityTestAttitude':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').show();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourPartnerPersonalityTestInformationGathering':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').show();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourPartnerPersonalityTestDecisionMaking':

                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').show();
                        $('#divTestComplete').hide();
                        break;

                    case 'divYourPartnerPersonalityTestLifestyle':
                    
                        $('#divYourAge').hide();
                        $('#divYourWorkStatus').hide();
                        $('#divYourPartnersAge').hide();
                        $('#divYourPartnersWorkStatus').hide();
                        $('#divYourAnnualIncome').hide();
                        $('#divYourPartnersAnnualIncome').hide();
                        $('#divYourMBTI').hide();
                        $('#divYourPartnersMBTI').hide();
                        $('#divYouMarriedBefore').hide();
                        $('#divYourPartnerMarriedBefore').hide();
                        $('#divYouOwnAHouse').hide();
                        $('#divYourPartnerOwnsAHouse').hide();
                        $('#divYourNoOfDependentChildren').hide();
                        $('#divYourPartnerNoOfDependentChildren').hide();
                        $('#divYouHaveHealthInsurance').hide();
                        $('#divYourPartnerHasHealthInsurance').hide();
                        $('#divYourYearsSinceLastMarriage').hide();
                        $('#divYourPartnerFinancialLiability').hide();
                        $('#divNatureOfYourPartnersFinancialLiability').hide();
                        $('#divWidowOrWidower').hide();
                        $('#divYourPartnerSocialSecurityBenfitMoreThanYours').hide();
                        // Personality Test
                        $('#divWantToTakePersonalityTest').hide();
                        $('#divYourPersonalityTestAttitude').hide();
                        $('#divYourPersonalityTestInformationGathering').hide();
                        $('#divYourPersonalityTestDecisionMaking').hide();
                        $('#divYourPersonalityTestLifestyle').hide();
                        $('#divPartnerWantToTakePersonalityTest').hide();
                        $('#divYourPartnerPersonalityTestAttitude').hide();
                        $('#divYourPartnerPersonalityTestInformationGathering').hide();
                        $('#divYourPartnerPersonalityTestDecisionMaking').hide();
                        $('#divYourPartnerPersonalityTestLifestyle').hide();
                        $('#divTestComplete').show();
                        break;
        }
    }
</script>
<script type = "text/javascript">
// This function ensures that only numbers can be enetered in the text box
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
    {
        return false;
    }

    return true; // Return true if a number is entered
    }
</script>
</head>
<body onload="SetDefaultViewIndex();">
    <form id="form1" runat="server">
    <div id="templatemo_wrapper_outter">

	<div id="templatemo_wrapper_inner">
    
    	<div id="templatemo_header">
    
            <div id="site_title">
            
                <h1><a href="Default.aspx" target="_parent">
                    <img src="images/marriage.png" alt="marriage counseling system" />
                    <span>get married or stay single</span>
                </a></h1>
                
            </div> <!-- end of site_title -->
    
    </div>
    
    <div id="templatemo_menu">
    
        <ul>
            <li><a href= "Default.aspx">Home</a></li>
             </ul>    	
    
    </div>
    
    <div id="templatemo_content_wrapper">
    
    	
    
		<div id="templatemo_content">
        
        	<div class="content_section">
        
                <h2>Marriage Test</h2>
                <div>               
                <div id="divYourWorkStatus">
                What is your work status? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourWorkStatus">
                <asp:ListItem Text = "Student" Value ="Student" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Employed" Value ="Employed"></asp:ListItem>
                <asp:ListItem Text = "Retired" Value ="Retired"></asp:ListItem>
                </asp:RadioButtonList>
                <div><input type="button" onclick="SendAnswer('divYourWorkStatus');" class="btnNext" value="    Next >>    "/></div>
                </div>
                <div id="divYourPartnersWorkStatus">
                What is the work status of the person you wish marry ?<br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerWorkStatus">
                <asp:ListItem Text = "Student" Value ="Student" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Employed" Value ="Employed"></asp:ListItem>
                <asp:ListItem Text = "Retired" Value ="Retired"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							
							<input type="button" onclick="SendAnswer('divYourPartnersWorkStatus');" class="btnNext" value="    Next >>    "/>
                            </div>
                            </div> 
                <div id="divYourAge">
                What is your age?<br /><br />
                <input type="text" id="txtYourAge" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourAge');" class="btnNext" value="    Next >>    "/></div>
                </div>
                <div id="divYourPartnersAge">
                What is the age of the person you wish to marry? <br /><br />
                <input type="text" id="txtYourPartnersAge" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnersAge');" class="btnNext" value="    Next >>    "/></div></div>               

                <div id="divYourAnnualIncome">
                What is your annual income in Naira? <br /><br />
                <input type="text" id="txtYourAnnualIncome" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourAnnualIncome');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourPartnersAnnualIncome">
                What is the annual income in Naira of the person you wish to marry? <br /><br />
                <input type="text" id="txtYourPartnersAnnualIncome" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnersAnnualIncome');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourMBTI">
                What is your MBTI [choose Dont Know if you dont know] ?<br />	
                <asp:RadioButtonList runat="server" ID= "rblYourMBTI">
                <asp:ListItem Text = "Dont Know" Value ="Dont Know" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "ISTJ" Value ="ISTJ"></asp:ListItem>
                <asp:ListItem Text = "ISFJ" Value ="ISFJ"></asp:ListItem>
                <asp:ListItem Text = "INFJ" Value ="INFJ"></asp:ListItem>
                <asp:ListItem Text = "INTJ" Value ="INTJ"></asp:ListItem>
                <asp:ListItem Text = "ISTP" Value ="ISTP"></asp:ListItem>
                <asp:ListItem Text = "ISFP" Value ="ISFP"></asp:ListItem>
                <asp:ListItem Text = "INFP" Value ="INFP"></asp:ListItem>
                <asp:ListItem Text = "INTP" Value ="INTP"></asp:ListItem>
                <asp:ListItem Text = "ESTP" Value ="ESTP"></asp:ListItem>
                <asp:ListItem Text = "ESFP" Value ="ESFP"></asp:ListItem>
                <asp:ListItem Text = "ENFP" Value ="ENFP"></asp:ListItem>
                <asp:ListItem Text = "ENTP" Value ="ENTP"></asp:ListItem>
                <asp:ListItem Text = "ESTJ" Value ="ESTJ"></asp:ListItem>
                <asp:ListItem Text = "ENFJ" Value ="ENFJ"></asp:ListItem>
                <asp:ListItem Text = "ENTJ" Value ="ENTJ"></asp:ListItem>
                </asp:RadioButtonList>						
                <div>
                <input type="button" onclick="SendAnswer('divYourMBTI');" class="btnNext" value="    Next >>    "/>
                            </div>
                </div>
                <div id="divYourPartnersMBTI">
                What is the MBTI of the person you wish to marry [choose Dont Know if you dont know] ? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerMBTI">
                <asp:ListItem Text = "Dont Know" Value ="Dont Know" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "ISTJ" Value ="ISTJ"></asp:ListItem>
                <asp:ListItem Text = "ISFJ" Value ="ISFJ"></asp:ListItem>
                <asp:ListItem Text = "INFJ" Value ="INFJ"></asp:ListItem>
                <asp:ListItem Text = "INTJ" Value ="INTJ"></asp:ListItem>
                <asp:ListItem Text = "ISTP" Value ="ISTP"></asp:ListItem>
                <asp:ListItem Text = "ISFP" Value ="ISFP"></asp:ListItem>
                <asp:ListItem Text = "INFP" Value ="INFP"></asp:ListItem>
                <asp:ListItem Text = "INTP" Value ="INTP"></asp:ListItem>
                <asp:ListItem Text = "ESTP" Value ="ESTP"></asp:ListItem>
                <asp:ListItem Text = "ESFP" Value ="ESFP"></asp:ListItem>
                <asp:ListItem Text = "ENFP" Value ="ENFP"></asp:ListItem>
                <asp:ListItem Text = "ENTP" Value ="ENTP"></asp:ListItem>
                <asp:ListItem Text = "ESTJ" Value ="ESTJ"></asp:ListItem>
                <asp:ListItem Text = "ENFJ" Value ="ENFJ"></asp:ListItem>
                <asp:ListItem Text = "ENTJ" Value ="ENTJ"></asp:ListItem>
                </asp:RadioButtonList>			
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnersMBTI');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYouMarriedBefore">
                Were you married before?<br />
                <asp:RadioButtonList runat="server" ID= "rblYouMarriedBefore">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYouMarriedBefore');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourPartnerMarriedBefore">
                Was the person you wish to marry married before?<br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerMarriedBefore">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnerMarriedBefore');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYouOwnAHouse">
                Do you own a house?<br />
                <asp:RadioButtonList runat="server" ID= "rblYouOwnAHouse">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYouOwnAHouse');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourPartnerOwnsAHouse">
                Does the person you wish to marry own a house?<br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerOwnsAHouse">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnerOwnsAHouse');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourNoOfDependentChildren">
                How many dependent children do you have from past marriages?<br /><br />
                <input type="text" id="txtYourNoOfDependentChildren" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourNoOfDependentChildren');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourPartnerNoOfDependentChildren">
                How many dependent children does the person you wish marry have from past marriages?<br /><br />
                <input type="text" id="txtYourPartnerNoOfDependentChildren" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnerNoOfDependentChildren');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYouHaveHealthInsurance">
                Do you have health insurance ? <br />
                <asp:RadioButtonList runat="server" ID= "rblYouHaveHealthInsurance">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYouHaveHealthInsurance');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourPartnerHasHealthInsurance">
                Does the person you wish marry have health insurance ? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerHasHealthInsurance">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnerHasHealthInsurance');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourYearsSinceLastMarriage">
                How many years have passed since your last marriage ? <br /><br />
                <input type="text" id="txtYourYearsSinceLastMarriage" runat="server" onkeypress ="return isNumberKey(event);" />
                <div>
							<input type="button" onclick="SendAnswer('divYourYearsSinceLastMarriage');" class="btnNext" value="    Next >>    "/></div></div>
                <div id="divYourPartnerFinancialLiability">
                Does the person you wish to marry have any finanial liabilites? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerhasFinancialLiabilities">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPartnerFinancialLiability');" class="btnNext" value="    Next >>    "/>
                            </div>
                </div>
                <div id="divNatureOfYourPartnersFinancialLiability">
                What type of finanial liability does he/she have? <br />
                <asp:RadioButtonList runat="server" ID= "rblNatureOfYourPartnersFinancialLiability">
                <asp:ListItem Text = "IRS-Liens" Value ="IRS-Liens" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Personal Lawsuit" Value ="Personal Lawsuit"></asp:ListItem>
                <asp:ListItem Text = "Bad Credit" Value ="Bad Credit"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divNatureOfYourPartnersFinancialLiability');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divWidowOrWidower">
                Is your ex dead? <br />
                <asp:RadioButtonList runat="server" ID= "rblWidowOrWidower">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divWidowOrWidower');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPartnerSocialSecurityBenfitMoreThanYours">
                Is your partner's social security benefit more than yours?<br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerSocialSecurityBenefitMoreThanYours">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYourPartnerSocialSecurityBenfitMoreThanYours');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                
                <!--Personality Test-->

                <div id="divWantToTakePersonalityTest">
                Do you want to factor in your personality indicator ? (You will be asked 4 more questions) <br />
                <asp:RadioButtonList runat="server" ID= "rblWantToTakePersonalityTest">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divWantToTakePersonalityTest');" class="btnNext" value="    Next >>    "/>
                            </div>
                </div>
                <div id="divYourPersonalityTestAttitude">
                What is your general attitude ? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPersonalityTestAttitude">
                <asp:ListItem Text = "Extraversion" Value ="Extraversion" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Introversion" Value ="Introversion"></asp:ListItem>
                </asp:RadioButtonList>
                <div>
							<input type="button" onclick="SendAnswer('divYourPersonalityTestAttitude');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPersonalityTestInformationGathering">
                What best describes your information gathering approach? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPersonalityTestInformationGathering">
                <asp:ListItem Text = "Sensing" Value ="Sensing" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Intuition" Value ="Intuition"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPersonalityTestInformationGathering');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPersonalityTestDecisionMaking">
                What best describes your decision making approach? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPersonalityTestDecisionMaking">
                <asp:ListItem Text = "Thinking" Value ="Thinking" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Feeling" Value ="Feeling"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPersonalityTestDecisionMaking');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPersonalityTestLifestyle">
                What is your approach in relating to the outside world? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPersonalityTestLifeStyle">
                <asp:ListItem Text = "Judgment" Value ="Judgment" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Perception" Value ="Perception"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPersonalityTestLifestyle');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divPartnerWantToTakePersonalityTest">
                Do you want to factor in your partner's personality indicator ? (You will be asked 4 more questions) <br />
                 <asp:RadioButtonList runat="server" ID= "rblYourPartnerWantToTakePersonalityTest">
                <asp:ListItem Text = "No" Value ="No" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Yes" Value ="Yes"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divPartnerWantToTakePersonalityTest');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPartnerPersonalityTestAttitude">
                What is your partner's general attitude ? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerPersonalityTestAttitude">
                <asp:ListItem Text = "Extraversion" Value ="Extraversion" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Introversion" Value ="Introversion"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPartnerPersonalityTestAttitude');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPartnerPersonalityTestInformationGathering">
                What best describes your partner's information gathering approach? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerPersonalityTestInformationGathering">
                <asp:ListItem Text = "Sensing" Value ="Sensing" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Intuition" Value ="Intuition"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPartnerPersonalityTestInformationGathering');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPartnerPersonalityTestDecisionMaking">
                What best describes your partner's decision making approach? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerPersonalityTestDecisionMaking">
                <asp:ListItem Text = "Thinking" Value ="Thinking" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Feeling" Value ="Feeling"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPartnerPersonalityTestDecisionMaking');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                <div id="divYourPartnerPersonalityTestLifestyle">
                What is your partner's approach in relating to the outside world? <br />
                <asp:RadioButtonList runat="server" ID= "rblYourPartnerPersonalityTestLifestyle">
                <asp:ListItem Text = "Judgment" Value ="Judgment" Selected="True"></asp:ListItem>
                <asp:ListItem Text = "Perception" Value ="Perception"></asp:ListItem>
                </asp:RadioButtonList>
                <div>                
							<input type="button" onclick="SendAnswer('divYourPartnerPersonalityTestLifestyle');" class="btnNext" value="    Next >>    "/>
                            </div></div>
                            <div id="divTestComplete">
                            <div class="float_l_image">
	                <img src="images/templatemo_image_06.jpg" alt="image" />
                </div>
                You have successfully completed the marriage test<br />
                Please click the button below to view your result
                <br /><br /><br /><br /><br /><br />
                <div>                
							<asp:Button runat= "server" ID="btnShowResult" Text="View Result" 
                                CssClass="btnNext" onclick="btnShowResult_Click"/></div></div>
                           
                </div>
            </div>
            
            
            
            </div>
        
        </div>
        
       
    
    </div> 
    
    <div id="templatemo_footer">

       
    
        Copyright © 2013 <a href="#">Online Marriage Counseling System</a> | 
        Designed by EJIMOGU ESTHER OSI
    
    </div> 
    
    </div> 

</div> 
    </form>
</body>
</html>
