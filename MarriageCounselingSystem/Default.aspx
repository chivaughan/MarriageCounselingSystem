<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MarriageCounselingSystem._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marriage Counseling System</title>
<meta name="keywords" content="wedding, marriage, marriage counseling system" />
<meta name="description" content="Online Marriage Counseling System helps you decide whether to get married or stay single" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
    function clearText(field) {
        if (field.defaultValue == field.value) field.value = '';
        else if (field.value == '') field.value = field.defaultValue;
    }
</script>
</head>
<body>
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
            <li><a href= "Default.aspx" class="current">Home</a></li>
             <li><a href= "ClientInfo.aspx">Take Test</a></li>
        </ul>    	
    
    </div> 
    
    <div id="templatemo_content_wrapper">
    
    	
    
		<div id="templatemo_content">
        
        	<div class="content_section">
        
                <h2>Welcome to Online Marriage Counseling System</h2>
                
                <div class="float_l_image">
	                <img src="images/templatemo_image_01.png" alt="image" />
                </div>
                
                <p>I am here to help you with your nuptial predicament</p>
                
                <p>My advice factors in the following criteria:</p>
                <p>
                 1. Income Compatibility<br />
                 2. Age Factor<br />
                 3. Employment Status<br />
                 4. Marriage Penalty Tax Liability<br />
                 5. Cohabitating Couple Economy<br />
                 6. Health Insurance Coverage<br />
                 7. Social Security Benefits<br />
                 8. Family Dynamics<br />
                 9. Myers Briggs Personality Type Personality Compatibility (MBTI)
                </p>
                <p>But before I do that, please take the following test.</p>
                <p style="float:right;">
                <asp:Button runat="server" ID="btnTakeTest" Text="Take Test" 
                    onclick="btnTakeTest_Click" />
                    </p>
            </div>
            
            
            
            </div>
        
        </div>
        
       
    
    </div> 
    
    <div id="templatemo_footer">

       
    
        Copyright © 2013 <a href="#">Online Marriage Counseling System</a> | 
        Designed by EJIMOGU ESTHER OSI
    
    </div> <!-- end of footer -->
    
    </div> <!-- end of wrapper_inner -->

 
    </form>
</body>
</html>
