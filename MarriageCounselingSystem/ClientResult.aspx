<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientResult.aspx.cs" Inherits="MarriageCounselingSystem.ClientResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marriage Counseling System</title>
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
    <script type = "text/javascript">
        // This function ensures that only numbers can be enetered in the text box
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }

            return true; // Return true if a number is entered
        }
</script>
    <script type="text/javascript">
        function CheckAllFields() {
            var div = document.getElementById('divClientInfo');
            inputs = div.getElementsByTagName('input');
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].value == null || inputs[i].value == '') {
                    //Tell the user to fill all fields
                    alert('All fields are required');
                    return false;
                }
            }
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
        
                <h2 runat="server" id="lblShowingResult"></h2>
                
                                
                
                <div id="divClientInfo">
                Full Name: <strong><asp:Label runat="server" ID="lblFullName"></asp:Label></strong>
                <br /><br />
                Gender: <strong><asp:Label runat="server" ID="lblGender"></asp:Label></strong>
                <br /><br />
                Age: <strong><asp:Label runat="server" ID="lblAge"></asp:Label></strong>
                <br /><br />
                Contact Address:<strong><asp:Label runat="server" ID="lblContactAddress"></asp:Label></strong>
                <br /><br />
                Phone Number: <strong><asp:Label runat="server" ID="lblPhoneNumber"></asp:Label></strong>
                <br /><br />
                Email: <strong><asp:Label runat="server" ID="lblEmail"></asp:Label></strong>
                <br /><br />
                Date: <strong><asp:Label runat="server" ID="lblDate"></asp:Label></strong>
                <br /><br />
                <strong><asp:Label runat="server" ID="lblResult"></asp:Label></strong>
                <br /><br />
                    </div>
                
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
