<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_Validate.aspx.cs" Inherits="WebApplication_ValidationControls.WebForm_Validate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script>
        function validate_fun(sender, args) {
            if (args.Value.length < 5 || args.Value.length > 10) {
                args.ISValid= false;
            }
        }
    </script>

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="TextBox1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="TextBox2"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Not Equal"></asp:CompareValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="TextBox3"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="TextBox4"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Not In Range" MaximumValue="50" MinimumValue="5" Type="Integer"></asp:RangeValidator>
            <br />

            <asp:Label ID="Label5" runat="server" Text="TextBox5"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox5" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label6" runat="server" Text="TextBox6"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validate_fun" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Not Validator"></asp:CustomValidator>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
