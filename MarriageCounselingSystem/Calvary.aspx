<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calvary.aspx.cs" Inherits="MarriageCounselingSystem.Calvary" %>

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
    
    	
    
		<div>
        
        	<div class="content_section">
        
                <h2>System Log</h2>
                
               <p align = "right">
                            
<a href="ChangePassword.aspx">Change Password</a> | <asp:LoginStatus ID="LoginStatus1" runat="server" /> 
                      
<asp:LoginName ID="LoginName1" runat="server" /></p>
                <br /><br />
                <asp:GridView runat="server" ID = "grvClients" Width="100%" GridLines="None" ForeColor="#333333" AllowPaging = "true" PageSize ="50"
DataSourceID="ClientDataSource" AutoGenerateColumns="false" DataKeyNames="ID" 
        EnableModelValidation ="true" ShowFooter = "true" ShowHeader = "true" 
        EmptyDataText="No client has used the system" OnRowCommand="grvClients_RowCommand">
                                <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                            <PagerStyle BackColor="#cc3f7f" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#cc3f7f" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server" Text ='<%# Bind("ID") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Full Name" SortExpression="FullName">
                                        <ItemTemplate>
                                            <asp:Label ID="lblFullName" runat="server" Text ='<%# Bind("FullName") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGender" runat="server" Text ='<%# Bind("Gender") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Age" SortExpression="Age">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAge" runat="server" Text ='<%# Bind("Age") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Contact Address" SortExpression="ContactAddress">
                                        <ItemTemplate>
                                            <asp:Label ID="lblContactAddress" runat="server" Text ='<%# Bind("ContactAddress") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Phone No" SortExpression="Phone">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPhoneNumber" runat="server" Text ='<%# Bind("Phone") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text ='<%# Bind("Email") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                <asp:TemplateField HeaderText="Date" SortExpression="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDate" runat="server" Text ='<%# Bind("Date") %>'></asp:Label>
                                        </ItemTemplate>                                        
                                    </asp:TemplateField> 
                                    <asp:ButtonField runat="server" Text="View" ControlStyle-ForeColor="Red" CommandName="View"/>
                                   
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="ClientDataSource" runat="server" ConnectionString ="<%$Connectionstrings:connStr%>"
     SelectCommand ="SELECT ID, FullName, Gender, Age, ContactAddress, Phone, Email, Date FROM ClientInfo"
    DeleteCommand="DELETE FROM [ClientInfo] WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    </DeleteParameters>
                                
    </asp:SqlDataSource>
                
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
