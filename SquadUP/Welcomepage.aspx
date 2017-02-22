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
                    <p>Email</p>
                    <asp:TextBox ID="emailLogin" runat="server"></asp:TextBox>
                    <p>Password</p>
                    <asp:TextBox ID="passwordLogin" runat="server"></asp:TextBox>
                
                </div>
            </div>

            <div class="section">
                <div id="welcomMessage">
                    <p> BOX</p>
                </div>
                
                <div id="signUpForm">
                    Email
                    <asp:TextBox ID="EmailRegistry" runat="server"></asp:TextBox>
                    <br />
                    First Name
                    <asp:TextBox ID="FirstNameRegistry" runat ="server"></asp:TextBox>
                    <br />
                    Last Name
                    <asp:TextBox ID="LastNameRegistry" runat="server"></asp:TextBox>
                    <br />
                    Phone Number
                    <asp:TextBox ID="PhoneNumberRegistry" runat="server"></asp:TextBox>
                    <br />
                    Password
                    <asp:TextBox ID="PasswordRegistry" runat="server"></asp:TextBox>
                    <br />
                    Confirm Password 
                    <asp:TextBox ID="ConfirmPasswordRegistry" runat="server"></asp:TextBox>
                    <br />
                    Gender
                    <asp:DropDownList ID="GenderList" runat="server"></asp:DropDownList>


                </div>
            </div>
        </form>
    </body>


</html>
