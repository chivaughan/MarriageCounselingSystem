using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MarriageCounselingSystem
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnShowResult_Click(object sender, EventArgs e)
        {
            // Variables to hold the user's answers
            int yourAge = int.Parse(txtYourAge.Value.ToString());
            string yourWorkStatus = rblYourWorkStatus.SelectedValue;
            int yourPartnersAge = int.Parse(txtYourPartnersAge.Value.ToString());
            // Calculate the age difference (use the absolute value function so that a positive value is always returned) 
            int ageDifference = Math.Abs(yourAge - yourPartnersAge);
            string yourPartnersWorkStatus = rblYourPartnerWorkStatus.SelectedValue;
            double yourAnnualIncome = 0; // initialize this variable
            if (txtYourAnnualIncome.Value.ToString() != "")
            {
                yourAnnualIncome = double.Parse(txtYourAnnualIncome.Value.ToString());
            }
            double yourPartnersAnnualIncome = 0; // initialize this variable
            if (txtYourPartnersAnnualIncome.Value.ToString() != "")
            {
                yourPartnersAnnualIncome = double.Parse(txtYourPartnersAnnualIncome.Value.ToString());
            }
            // Calculate the income difference (use the absolute value function so that a positive value is always returned)
            double incomeDifference = Math.Abs(yourAnnualIncome - yourPartnersAnnualIncome);
            string yourMBTI = rblYourMBTI.SelectedValue;
            string yourMBTI_Value1 = "", yourMBTI_Value2 = "", yourMBTI_Value3 = "", yourMBTI_Value4 = ""; // These variables will form the MBTI for 'you'
            if (rblWantToTakePersonalityTest.SelectedValue == "Yes") // Calculate your MBTI
            {
                switch (rblYourPersonalityTestAttitude.SelectedValue)
                {
                    case "Extraversion":
                        yourMBTI_Value1 = "E";
                        break;
                    case "Introversion":
                        yourMBTI_Value1 = "I";
                        break;
                }
                switch (rblYourPersonalityTestInformationGathering.SelectedValue)
                {
                    case "Sensing":
                        yourMBTI_Value2 = "S";
                        break;
                    case "Intuition":
                        yourMBTI_Value2 = "N";
                        break;
                }
                switch (rblYourPersonalityTestDecisionMaking.SelectedValue)
                {
                    case "Thinking":
                        yourMBTI_Value3 = "T";
                        break;
                    case "Feeling":
                        yourMBTI_Value3 = "F";
                        break;
                }
                switch (rblYourPersonalityTestLifeStyle.SelectedValue)
                {
                    case "Judgment":
                        yourMBTI_Value4 = "J";
                        break;
                    case "Perception":
                        yourMBTI_Value4 = "P";
                        break;
                }
                yourMBTI = yourMBTI_Value1 + yourMBTI_Value2 + yourMBTI_Value3 + yourMBTI_Value4; 
            }
            string yourPartnersMBTI = rblYourPartnerMBTI.SelectedValue;
            string yourPartnerMBTI_Value1 = "", yourPartnerMBTI_Value2 = "", yourPartnerMBTI_Value3 = "", yourPartnerMBTI_Value4 = ""; // These variables will form the MBTI for 'your partner'
            if (rblYourPartnerWantToTakePersonalityTest.SelectedValue == "Yes") // Calculate the partner's MBTI
            {
                switch (rblYourPartnerPersonalityTestAttitude.SelectedValue)
                {
                    case "Extraversion":
                        yourPartnerMBTI_Value1 = "E";
                        break;
                    case "Introversion":
                        yourPartnerMBTI_Value1 = "I";
                        break;
                }
                switch (rblYourPartnerPersonalityTestInformationGathering.SelectedValue)
                {
                    case "Sensing":
                        yourPartnerMBTI_Value2 = "S";
                        break;
                    case "Intuition":
                        yourPartnerMBTI_Value2 = "N";
                        break;
                }
                switch (rblYourPartnerPersonalityTestDecisionMaking.SelectedValue)
                {
                    case "Thinking":
                        yourPartnerMBTI_Value3 = "T";
                        break;
                    case "Feeling":
                        yourPartnerMBTI_Value3 = "F";
                        break;
                }
                switch (rblYourPartnerPersonalityTestLifestyle.SelectedValue)
                {
                    case "Judgment":
                        yourPartnerMBTI_Value4 = "J";
                        break;
                    case "Perception":
                        yourPartnerMBTI_Value4 = "P";
                        break;
                }
                yourPartnersMBTI = yourPartnerMBTI_Value1 + yourPartnerMBTI_Value2 + yourPartnerMBTI_Value3 + yourPartnerMBTI_Value4;
            }
            string youMarriedBefore = rblYouMarriedBefore.SelectedValue;
            string yourPartnerMarriedBefore = rblYourPartnerMarriedBefore.SelectedValue;
            string youOwnAHouse = rblYouOwnAHouse.SelectedValue;
            string yourPartnerOwnsAHouse = rblYourPartnerOwnsAHouse.SelectedValue;
            int yourNoOfDependentChildren = 0; // initialize the number of dependent children
            if (txtYourNoOfDependentChildren.Value.ToString() != "")
            {
                yourNoOfDependentChildren = int.Parse(txtYourNoOfDependentChildren.Value.ToString());
            }
            int yourPartnerNoOfDependentChildren = 0; // initialize the number of dependent children
            if (txtYourPartnerNoOfDependentChildren.Value.ToString() != "")
            {
                yourPartnerNoOfDependentChildren = int.Parse(txtYourPartnerNoOfDependentChildren.Value.ToString());
            }
            string youHaveHealthInsurance = rblYouHaveHealthInsurance.SelectedValue;
            string yourPartnerHasHealthInsurance = rblYourPartnerHasHealthInsurance.SelectedValue;
            int yourYearsSinceLastMarriage = 0; // initialize the years since last marriage
            if (txtYourYearsSinceLastMarriage.Value.ToString() != "")
            {
                yourYearsSinceLastMarriage = int.Parse(txtYourYearsSinceLastMarriage.Value.ToString());
            }
            string yourPartnerFinancialLiability = rblYourPartnerhasFinancialLiabilities.SelectedValue;
            string natureOfYourPartnersFinancialLiability = rblNatureOfYourPartnersFinancialLiability.SelectedValue;
            string widowOrWidower = rblWidowOrWidower.SelectedValue;
            string yourPartnerSocialSecurityBenfitMoreThanYours = rblYourPartnerSocialSecurityBenefitMoreThanYours.SelectedValue;
            // Personality Test
            string wantToTakePersonalityTest = rblWantToTakePersonalityTest.SelectedValue;
            string YourPartnerPersonalityTestAttitude = rblYourPartnerPersonalityTestAttitude.SelectedValue;
            string YourPartnerPersonalityTestInformationGathering = rblYourPartnerPersonalityTestInformationGathering.SelectedValue;
            string YourPartnerPersonalityTestDecisionMaking = rblYourPartnerPersonalityTestDecisionMaking.SelectedValue;
            string YourPartnerPersonalityTestLifestyle = rblYourPartnerPersonalityTestLifestyle.SelectedValue;
            string partnerWantToTakePersonalityTest = rblYourPartnerWantToTakePersonalityTest.SelectedValue;
            string yourPartnerPersonalityTestAttitude = rblYourPartnerPersonalityTestAttitude.SelectedValue;
            string yourPartnerPersonalityTestInformationGathering = rblYourPartnerPersonalityTestInformationGathering.SelectedValue;
            string yourPartnerPersonalityTestDecisionMaking = rblYourPartnerPersonalityTestDecisionMaking.SelectedValue;
            string yourPartnerPersonalityTestLifestyle = rblYourPartnerPersonalityTestLifestyle.SelectedValue;
            // Determine the personality category
            string YourPartnerPersonalityCategory = DeterminePersonalityCategory("yourMBTI");
            string yourPartnersPersonalityCategory = DeterminePersonalityCategory("yourPartnersMBTI");
            int gettingMarriedCertaintyFactor = 0; // The gettingMarried certainty factor        
            
            // Domain Rules

            if (ageDifference > 30)
            {
                // based-on age-factor the-expert-system-favours-getting-married-with-certainty 20.0 %
                gettingMarriedCertaintyFactor = 20;
            }
            if (incomeDifference > 10000000)
            {
               // based-on income-compatibility the-expert-system-favours-getting-married-with-certainty 15.0 %
               gettingMarriedCertaintyFactor = 15;
            }
            if (incomeDifference > 100000 && incomeDifference < 1000000)
            {
               //based-on income-compatibility the-expert-system-favours-getting-married-with-certainty 55.0 % and
               //based-on marriage-penalty-tax-liability the-expert-system-favours-getting-married-with-certainty 25.0 %
               gettingMarriedCertaintyFactor = 80;
            }
            if (yourAnnualIncome > 10000000 && yourPartnersAnnualIncome > 10000000)
            {
			   // based-on income-tax the-expert-system-favours-getting-married-with-certainty 60.0 %
               gettingMarriedCertaintyFactor = 60;
            }
      
            if (yourAnnualIncome < 10000000 && yourPartnersAnnualIncome < 10000000)
            {
				// based-on income-tax the-expert-system-favours-getting-married-with-certainty 80.0 %
                gettingMarriedCertaintyFactor = 80;
            }
    
            if (youOwnAHouse == "Yes" && yourPartnerOwnsAHouse == "Yes")
            {
		        // based-on  cohabitating-couple-economy  the-expert-system-favours-getting-married-with-certainty 80.0 %
                gettingMarriedCertaintyFactor = 80;
            }
    
            if (yourAnnualIncome > 10000000 && yourPartnersAnnualIncome > 10000000 && yourNoOfDependentChildren > 1 && yourPartnerNoOfDependentChildren > 1 )
            {
		        // based-on income-tax the-expert-system-favours-getting-married-with-certainty 85.0 %
                gettingMarriedCertaintyFactor = 85;
            }
    
            if (youHaveHealthInsurance == "Yes" && yourPartnerHasHealthInsurance == "Yes")
            {
		        // based-on health-insurance-coverage the-expert-system-favours-getting-married-with-certainty 50.0 %
                gettingMarriedCertaintyFactor = 50;
            }
     
            if (youHaveHealthInsurance == "Yes" && yourPartnerHasHealthInsurance == "Yes" && yourNoOfDependentChildren > 2 && yourPartnerNoOfDependentChildren > 2 )
            {
				 // based-on health-insurance-coverage the-expert-system-favours-getting-married-with-certainty 80.0 % &&
            	//	based-on income-tax the-expert-system-favours-getting-married-with-certainty 90.0 %     
                gettingMarriedCertaintyFactor = 85;
            }
    
            if (yourYearsSinceLastMarriage > 9)
            {
		        // based-on social-security-benefits the-expert-system-favours-getting-married-with-certainty 40.0 %
                gettingMarriedCertaintyFactor = 40;
            }
    
            if (yourPartnerSocialSecurityBenfitMoreThanYours == "No")   
            {			
		        // based-on social-security-benefits the-expert-system-favours-getting-married-with-certainty 10.0 %
                gettingMarriedCertaintyFactor = 10;
            }
        
            if (youHaveHealthInsurance  == "Yes" && yourPartnerHasHealthInsurance == "No" && natureOfYourPartnersFinancialLiability == "IRS-Liens" && yourPartnerNoOfDependentChildren > 2 )
            {
		        // based-on health-insurance-coverage the-expert-system-favours-getting-married-with-certainty 20.0 % &&
                // based-on income-tax the-expert-system-favours-getting-married-with-certainty 10.0 % 
                gettingMarriedCertaintyFactor = 30;
            }
    
            if (youHaveHealthInsurance == "Yes" && yourPartnerHasHealthInsurance == "No" && natureOfYourPartnersFinancialLiability == "IRS-Liens" && yourPartnerNoOfDependentChildren > 2 )
            {
				 // based-on health-insurance-coverage the-expert-system-favours-getting-married-with-certainty 20.0 % &&
            	 // based-on income-tax the-expert-system-favours-getting-married-with-certainty 10.0 %
                 gettingMarriedCertaintyFactor = 30;
            }
     
            if  (yourAge < 40 && yourPartnersAge < 40 && yourNoOfDependentChildren > 0 && yourPartnerNoOfDependentChildren > 0 )
            {
				 // based-on health-insurance-coverage the-expert-system-favours-getting-married-with-certainty 20.0 % &&
                // based-on family-dynamics the-expert-system-favours-getting-married-with-certainty 10.0 %
                gettingMarriedCertaintyFactor = 30;
            }
    
            if  (yourAge < 40 && yourPartnersAge < 40 && yourNoOfDependentChildren > 0 && yourPartnerNoOfDependentChildren > 0 )
            {
				// based-on health-insurance-coverage the-expert-system-favours-getting-married-with-certainty 20.0 % &&
            	// based-on family-dynamics the-expert-system-favours-getting-married-with-certainty 10.0 %   
                gettingMarriedCertaintyFactor = 30;
            }
    
            if  (yourAge < 25 && yourPartnersAge < 25 && youOwnAHouse == "No" && yourPartnerOwnsAHouse == "No" )
            {
			    // based-on age-factor the-expert-system-favours-getting-married-with-certainty 10.0 % &&
            	// based-on family-dynamics the-expert-system-favours-getting-married-with-certainty 5.0 %  &&
                // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 5.0 %))
                gettingMarriedCertaintyFactor = 20;
            }
      
            if  (yourAge < 25 && yourPartnersAge < 25 && yourWorkStatus == "Employed" && yourPartnersWorkStatus != "Employed" )
            {
				 // based-on age-factor the-expert-system-favours-getting-married-with-certainty 10.0 % &&
            	//based-on family-dynamics the-expert-system-favours-getting-married-with-certainty 5.0 % &&
     			//based-on employment-status the-expert-system-favours-getting-married-with-certainty -5.0 % &&
            	//based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 5.0 %
                gettingMarriedCertaintyFactor = 25;
            }
    
            if  (yourAge < 35 && yourPartnersAge < 35 && yourWorkStatus == "Employed" && yourPartnersWorkStatus != "Employed" )
            {
				 // based-on age-factor the-expert-system-favours-getting-married-with-certainty 40.0 % &&
                 //based-on family-dynamics the-expert-system-favours-getting-married-with-certainty 25.0 % &&
     			 //based-on employment-status the-expert-system-favours-getting-married-with-certainty 5.0 % &&
            	 // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 25.0 %   
                gettingMarriedCertaintyFactor = 95;
            } 
 

            //Personality Test rules
            //Source http://www.personalitydesk.com/story/compatibility-&&-your-myers-briggs-personality-type
            if (YourPartnerPersonalityCategory == "SENSING THINKING PERCEIVING" && yourPartnersPersonalityCategory == "SENSING THINKING PERCEIVING" )
            {
				// based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 33.0 %
                gettingMarriedCertaintyFactor = 33;
            }
             
            if (YourPartnerPersonalityCategory == "INTUITIVE FEELING PERCEIVING" && yourPartnersPersonalityCategory == "INTUITIVE FEELING PERCEIVING")
            {
				 // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 42.0 %
                gettingMarriedCertaintyFactor = 42;
            }
     
            if (YourPartnerPersonalityCategory == "INTUITIVE THINKING" && yourPartnersPersonalityCategory == "INTUITIVE THINKING" )
            {
				 // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 59.0 %
                gettingMarriedCertaintyFactor = 59;
            }
        
            if (YourPartnerPersonalityCategory == "SENSING FEELING JUDGERS" && yourPartnersPersonalityCategory == "SENSING FEELING JUDGERS")
            {
				 // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 67.0 %))  
                gettingMarriedCertaintyFactor = 67;
            }
    
            if (YourPartnerPersonalityCategory == "INTUITIVE FEELERS" && yourPartnersPersonalityCategory == "INTUITIVE FEELERS")
            {
				 // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 73.0 %
                gettingMarriedCertaintyFactor = 73;
            }
    
            if (YourPartnerPersonalityCategory == "SENSING JUDGERS" && yourPartnersPersonalityCategory == "SENSING JUDGERS")
            {
		        // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 79.0 %)) 
                gettingMarriedCertaintyFactor = 79;
            }

            if (YourPartnerPersonalityCategory == "SENSING FEELING JUDGERS" && yourPartnersPersonalityCategory == "SENSING FEELING JUDGERS")
            {
                // based-on your-mbti-personality-compatibility the-expert-system-favours-getting-married-with-certainty 86.0 %
                gettingMarriedCertaintyFactor = 86;
            }

            string advice = "Based on your responses I think that you have a '" + ExpressCertaintyFactorAsChance(gettingMarriedCertaintyFactor) +
                "' chance of a successful marriage." + "\n" +
                "To be exact my confidence favouring getting married is " + gettingMarriedCertaintyFactor + "% and " + "\n" +
                "staying single is " + (100 - gettingMarriedCertaintyFactor) + "%";
            Session["canLoad"] = "Yes";
            Session["advice"] = advice;

            // Save the Client's Info and Result to the Database
            //string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            //SqlConnection conn;
            //conn = new SqlConnection(connString);
            //conn.Open();
            //SqlCommand command;
            //command = new SqlCommand();
            //string sqlString = @"INSERT INTO ClientInfo VALUES (@FullName, @Gender, @Age, @ContactAddress, @Phone, @Email, @Date, @Result)"; //the insert sql string
            //command.Parameters.AddWithValue("@FullName", Session["FullName"].ToString());
            //command.Parameters.AddWithValue("@Gender", Session["Gender"].ToString());
            //command.Parameters.AddWithValue("@Age", txtYourAge.Value.ToString());
            //command.Parameters.AddWithValue("@ContactAddress", Session["ContactAddress"].ToString());
            //command.Parameters.AddWithValue("@Phone", Session["PhoneNumber"].ToString());
            //command.Parameters.AddWithValue("@Email", Session["Email"].ToString());
            //command.Parameters.AddWithValue("@Date", DateTime.Now.Day + "/" + DateTime.Now.Month + "/" + DateTime.Now.Year);
            //command.Parameters.AddWithValue("@Result", advice);

            //command.Connection = conn; //Assign connection of the command
            //command.CommandText = sqlString; //Assign the command text of the command
            //command.ExecuteNonQuery(); //Execute the query

            Server.Transfer("Result.aspx");
        }

        #region Express Certainty Factor As Chance
        /// <summary>
        /// Expresses certainty factor as extremely low, low, average, high, extremely high 
        /// </summary>
        /// <param name="certaintyFactor">The certainty factor in percentage (e.g 25%)</param>
        /// <returns>Returns extremely low, low, average, high, or extremely high</returns>
        private string ExpressCertaintyFactorAsChance(int certaintyFactor)
        {
            if (certaintyFactor >= 0 && certaintyFactor < 20)
            {
                return "Extremely Low";
            }
            if (certaintyFactor >= 20 && certaintyFactor < 40)
            {
                return "Low";
            }
            if (certaintyFactor >= 40 && certaintyFactor < 60)
            {
                return "Average";
            }
            if (certaintyFactor >= 60 && certaintyFactor < 80)
            {
                return "High";
            }
            if (certaintyFactor >= 80 && certaintyFactor <= 100)
            {
                return "Extremely High";
            }
            return ""; // Return an empty string if none of the above conditions is met
        }
        #endregion

        #region Determine Personality Category
        /// <summary>
        /// This function returns the personality category for an individual
        /// </summary>
        /// <param name="MBTI">The only values that should be sent to this function are 'yourMBTI' or 'yourPartnersMBTI'</param>
 
        private string DeterminePersonalityCategory(string MBTI)
        {
            switch (MBTI)
            {
                case "yourMBTI":
                    if (rblYourMBTI.SelectedValue == "ESTJ" || rblYourMBTI.SelectedValue == "ESFJ" || rblYourMBTI.SelectedValue == "ISTJ" || rblYourMBTI.SelectedValue == "ISFJ")
                    {
                        return "SENSING JUDGERS";
                    }
                    if (rblYourMBTI.SelectedValue == "ENFP" || rblYourMBTI.SelectedValue == "INFP" || rblYourMBTI.SelectedValue == "ENFJ" || rblYourMBTI.SelectedValue == "INFJ")
                    {
                        return "INTUITIVE FEELERS";
                    }
                    if (rblYourMBTI.SelectedValue == "INFP" || rblYourMBTI.SelectedValue == "ENFP")
                    {
                        return "INTUITIVE FEELING PERCEIVING";
                    }
                    if (rblYourMBTI.SelectedValue == "ESTJ" || rblYourMBTI.SelectedValue == "ISTJ")
                    {
                        return "SENSING THINKING JUDGING";
                    }
                    if (rblYourMBTI.SelectedValue == "ESFJ" || rblYourMBTI.SelectedValue == "ISFJ")
                    {
                        return "SENSING FEELING JUDGERS";
                    }
                    if (rblYourMBTI.SelectedValue == "ENFP" || rblYourMBTI.SelectedValue == "INFP")
                    {
                        return "FEELING PERCEIVERS";
                    }
                    if (rblYourMBTI.SelectedValue == "ENFJ" || rblYourMBTI.SelectedValue == "INFJ")
                    {
                        return "INTUITIVE FEELING JUDGERS";
                    }
                    if (rblYourMBTI.SelectedValue == "ISTP" || rblYourMBTI.SelectedValue == "ESTP")
                    {
                        return "SENSING THINKING PERCEIVING";
                    }
                    if (rblYourMBTI.SelectedValue == "ENTP" || rblYourMBTI.SelectedValue == "INTP" || rblYourMBTI.SelectedValue == "ENTJ" || rblYourMBTI.SelectedValue == "INTJ")
                    {
                        return "INTUITIVE THINKING";
                    }
                    break;
                case "yourPartnersMBTI": 
                    if (rblYourPartnerMBTI.SelectedValue == "ESTJ" || rblYourPartnerMBTI.SelectedValue == "ESFJ" || rblYourPartnerMBTI.SelectedValue == "ISTJ" || rblYourPartnerMBTI.SelectedValue == "ISFJ")
                    {
                        return "SENSING JUDGERS";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ENFP" || rblYourPartnerMBTI.SelectedValue == "INFP" || rblYourPartnerMBTI.SelectedValue == "ENFJ" || rblYourPartnerMBTI.SelectedValue == "INFJ")
                    {
                        return "INTUITIVE FEELERS";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "INFP" || rblYourPartnerMBTI.SelectedValue == "ENFP")
                    {
                        return "INTUITIVE FEELING PERCEIVING";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ESTJ" || rblYourPartnerMBTI.SelectedValue == "ISTJ")
                    {
                        return "SENSING THINKING JUDGING";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ESFJ" || rblYourPartnerMBTI.SelectedValue == "ISFJ")
                    {
                        return "SENSING FEELING JUDGERS";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ENFP" || rblYourPartnerMBTI.SelectedValue == "INFP")
                    {
                        return "FEELING PERCEIVERS";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ENFJ" || rblYourPartnerMBTI.SelectedValue == "INFJ")
                    {
                        return "INTUITIVE FEELING JUDGERS";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ISTP" || rblYourPartnerMBTI.SelectedValue == "ESTP")
                    {
                        return "SENSING THINKING PERCEIVING";
                    }
                    if (rblYourPartnerMBTI.SelectedValue == "ENTP" || rblYourPartnerMBTI.SelectedValue == "INTP" || rblYourPartnerMBTI.SelectedValue == "ENTJ" || rblYourPartnerMBTI.SelectedValue == "INTJ")
                    {
                        return "INTUITIVE THINKING";
                    }
                    break;                
            }
            return ""; // Return an empty string if any other parameter is passed
        }
        #endregion
    }
}