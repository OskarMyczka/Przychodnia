<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MojeWizyty.aspx.cs" Inherits="Przychodnia_online.MojeWizyty" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Content/Style.css">
    <title>PRZYCHODNIA</title>
</head>
<body>
    <div class="container">

    <div class="header">

      <a href="index.html"><img src="Content/logo.png" alt="KOKW" class="logo" onclick="Przycisk_menu">
        <h1>PRZYCHODNIA</h1></a>
        <img src="Content/logout.png" alt="KOKW" class="logout">
    </div>

    <div class="menu" style="text-align:center">
      <h2 class="menuheader">Menu</h2>

          <form runat="server">
        <asp:button class="test" type="button" runat="server" Text="Umów się na wizytę" OnClick="Przycisk_wizyty" />
        <asp:button class="test" type="button" runat="server" Text="Sprawdź swoje wizyty" OnClick="PrzyciskMoje" />
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Sprawdź swoją kartę" /></a>
        <asp:button class="test" type="button" runat="server" Text="Kontakt" OnClick="Przycisk_kontakt" />
          

    </div>
    <div class="content">
        
       <div style="padding-top: 50px; padding-right:180px; ">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" BorderColor="Black" BorderWidth="1px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID_WIZYTA" HeaderText="ID_WIZYTA" InsertVisible="False" ReadOnly="True" SortExpression="ID_WIZYTA" Visible="False" />
                <asp:BoundField DataField="LEK_IMIE" HeaderText="Imie lekarza" SortExpression="LEK_IMIE" />
                <asp:BoundField DataField="LEK_NAZWISKO" HeaderText="Nazwisko lekarza" SortExpression="LEK_NAZWISKO" />
                <asp:BoundField DataField="DATA" HeaderText="DATA" SortExpression="DATA" />
                <asp:BoundField DataField="GODZINA" HeaderText="GODZINA" SortExpression="GODZINA" />
                <asp:BoundField DataField="ID_TERMINU" HeaderText="ID_TERMINU" SortExpression="ID_TERMINU" Visible="False" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrzychodniaConnectionString2 %>" SelectCommand="SELECT ID_WIZYTA, WIZYTA.ID_TERMINU, PACJENT.PAC_IMIE, PACJENT.PAC_NAZWISKO, LEKARZ.LEK_IMIE, LEKARZ.LEK_NAZWISKO, TERMINY.DATA, TERMINY.GODZINA FROM PACJENT INNER JOIN WIZYTA ON PACJENT.ID_PACJENT = WIZYTA.ID_PACJENT INNER JOIN TERMINY ON WIZYTA.ID_TERMINU = TERMINY.ID_TERMINU INNER JOIN LEKARZ ON WIZYTA.ID_LEKARZ = LEKARZ.ID_LEKARZ AND TERMINY.ID_LEKARZ = LEKARZ.ID_LEKARZ WHERE PACJENT.ID_PACJENT= @ID_PACJENT">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="ID_PACJENT" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <asp:Button ID="Button1" runat="server" Type="button" Text="Anuluj wizytę" OnClick="AnulujWiz" />
       
    </div>
        </form>
    <div class="footer">
      Projekt Przychodnia - Wykonanie: K.O.K.W 2021 &copy;
    </div>
   
  </div>

</body>
</html>