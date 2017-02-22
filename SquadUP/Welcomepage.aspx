<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcomepage.aspx.cs" Inherits="Welcomepage" %>

<html>
    <head>
        <title>Squad UP</title>
        <link href="SquadStyles.css" type="text/css" rel="stylesheet" />
    </head>

    <body>
        <form id="welcomPage" runat="server">
            <div class="header">
                <div class="headerImage">

                </div>

                <div id="loginForm">
                    <asp:TextBox ID="emailLogin" class="loginField" runat="server" Text="E-Mail"></asp:TextBox>  
                    <asp:TextBox ID="passwordLogin" class="loginField" runat="server" Text="Password"></asp:TextBox>
                    <asp:Button ID="login" runat="server" Text="Login" />
                </div>
            </div>

            <div class="section">
                <div id="welcomMessage">
                    <p> BOX</p>
                </div>
                
                <div id="signUpForm">
                    <h1>Join Today, It's Free!</h1>
                    <asp:TextBox ID="signUpFirstName" runat ="server" Text="First name"></asp:TextBox>                    
                    <asp:TextBox ID="signUpLastName" runat="server" Text="Last name"></asp:TextBox> 
                    <asp:TextBox ID="signUpEmail" runat="server" Text="E-Mail"></asp:TextBox>             
                    <asp:TextBox ID="signUpPassword" runat="server" Text="Password"></asp:TextBox>                
                    <asp:TextBox ID="signUpConfirmPassword" runat="server" Text="Confirm Password"></asp:TextBox>
                    <asp:DropDownList ID="signUpGenderList" runat="server"></asp:DropDownList>
                </div>
            </div>
        </form>
    </body>


</html>
