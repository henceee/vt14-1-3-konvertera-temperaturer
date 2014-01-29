<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Konvertering.aspx.cs" Inherits="WebApplication1.WebForm1" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>Konvertera Temperaturer</h1>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Vänligen åtgärda följande fel:" />
        
        <%-------- STARTTEMPERATUR --------%>

        <asp:Label ID="Label1" runat="server" AssociatedControlID="StartTemp" Text="Starttemperatur:" />
        <br />
        <asp:TextBox ID="StartTemp" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="StartTemp" runat="server" Text="*" ErrorMessage="Fyll i en starttemperatur" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" ControlToValidate="StartTemp" runat="server" Text="*" ErrorMessage="Använd endast heltal!" Display="Dynamic" Operator="GreaterThan" Type="Integer" ValueToCompare="-10000000"></asp:CompareValidator>
         <br />
        <br />

         <%-------- SLUTTEMPERATUR --------%>

        <asp:Label ID="Label2" runat="server" AssociatedControlID="EndTemp" Text="Sluttemperatur:" />
        <br />
        <asp:TextBox ID="EndTemp" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="EndTemp" runat="server" Text="*" ErrorMessage="Fyll i en sluttemperatur" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="EndTemp" ValueToCompare="StartTemp" runat="server" Text="*" ErrorMessage="Sluttemperatur måste vara större än starttemperatur!" Operator="GreaterThanEqual" Display="Dynamic" Type="String"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="EndTemp" Text="*" ErrorMessage="Använd endast heltal!" Display="Dynamic" Type="Integer" ValueToCompare="-10000" Operator="GreaterThan"></asp:CompareValidator>
        <br />
        <br />
        
         <%-------- TEMPERATURSTEG --------%>

        <asp:Label ID="Label3" runat="server" AssociatedControlID="Steps" Text="Temperatursteg:" />
        <br />
        <asp:TextBox ID="Steps" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Steps" runat="server" Text="*" ErrorMessage="Fyll i temperatursteg" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator4" ControlToValidate="Steps" runat="server" text="*" ErrorMessage="Temperatursteg måste vara inom intervallet 0-100" Operator="GreaterThan" Type="Integer" ValueToCompare="0" Display="Dynamic"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator5" ControlToValidate="Steps" runat="server" Text="*" ErrorMessage="Temperatursteg måste vara inom intervallet 0-100" Operator="LessThanEqual" ValueToCompare="100" Type="Integer"></asp:CompareValidator>
        <br />
        <br />

         <%-------- CELCIUS --------%>

        <asp:RadioButton ID="Celcius" runat="server" GroupName="Radio" />

        <asp:Label ID="Label4" runat="server" AssociatedControlID="Celcius" Text="Celcius till Farenheit" />
        <br />

         <%-------- FARENHEIT --------%>

        <asp:RadioButton ID="Farenheit" runat="server" GroupName="Radio" />

        <asp:Label ID="Label5" runat="server" AssociatedControlID="Farenheit" Text="Farenheit till Celcius" />
        <br />
        <br />
        
       
        <asp:Button ID="Button1" runat="server" Text="Konvertera" />
    </div>
    </form>
</body>
</html>
