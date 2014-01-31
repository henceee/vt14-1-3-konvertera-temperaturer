<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Konvertering.aspx.cs" Inherits="WebApplication1.WebForm1" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <div id="lefty"></div>
    <form id="form1" runat="server">
    <div>
            <h1>Konvertera Temperaturer</h1>
        <div id="filler"></div>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Vänligen åtgärda följande fel:" />
        
        <%-------- STARTTEMPERATUR --------%>

        <asp:Label ID="Label1" runat="server" AssociatedControlID="StartTemp" Text="Starttemperatur:" />
        <br />
        <asp:TextBox ID="StartTemp" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="StartTemp" runat="server" Text="*" ErrorMessage="Fyll i en starttemperatur" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="StartTemp" Text="*" ErrorMessage="Använd endast heltal!" Display="Dynamic" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        <br />
        <br />

         <%-------- SLUTTEMPERATUR --------%>

        <asp:Label ID="Label2" runat="server" AssociatedControlID="EndTemp" Text="Sluttemperatur:" />
        <br />
        <asp:TextBox ID="EndTemp" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="EndTemp" runat="server" Text="*" ErrorMessage="Fyll i en sluttemperatur" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server"
                    ControlToValidate="EndTemp" ControlToCompare="StartTemp" Operator="GreaterThanEqual" Type="Integer"
                    Text="*" ErrorMessage="Sluttemperaturen måste vara högre än Starttemperaturen." Display="Dynamic" SetFocusOnError="True">
        </asp:CompareValidator>
            
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="EndTemp" Text="*" ErrorMessage="Använd endast heltal!" Display="Dynamic" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        <br />
        <br />
        
         <%-------- TEMPERATURSTEG --------%>

        <asp:Label ID="Label3" runat="server" AssociatedControlID="Steps" Text="Temperatursteg:" />
        <br />
        <asp:TextBox ID="Steps" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Steps" runat="server" Text="*" ErrorMessage="Fyll i temperatursteg" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" Text="*" ControlToValidate="Steps" ErrorMessage="Temperatursteg måste vara inom intervallet 0-100" BorderStyle="NotSet" Display="Dynamic" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        <br />
        <br />

          <%-------- CELCIUS TILL FARENHEIT --------%>

        <asp:RadioButton ID="Farenheit" runat="server" GroupName="Radio" />

        <asp:Label ID="Label5" runat="server" AssociatedControlID="Farenheit" Text="Celcius till Farenheit" />
        <br />

         <%-------- FARENHEIT TILL CELCIUS --------%>

        <asp:RadioButton ID="Celcius" runat="server" GroupName="Radio" />

        <asp:Label ID="Label4" runat="server" AssociatedControlID="Celcius" Text="Farenheit till Celcius" />
        <br />
        <br />
        
       
        <asp:Button ID="Button1" runat="server" Text="Konvertera" OnClick="Button1_Click" />

        <%-- Tabellen som renderas ut vid postback--%>

        <asp:Table ID="TempTable" runat="server" Visible="false">
            <asp:TableRow CssClass="firstrow">
                <asp:TableCell ID="Col1">
                    <asp:Literal ID="Literal1" runat="server">{0}</asp:Literal>
                </asp:TableCell>
                <asp:TableCell ID="Col2">
                    <asp:Literal ID="Literal2" runat="server">{0}</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
