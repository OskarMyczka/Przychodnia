<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pac_index.aspx.cs" Inherits="Przychodnia_online.Pac_index" %>

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
        <asp:button class="test" type="button" runat="server" Text="Sprawdź swoją wizytę" OnClick="PrzyciskMoje" />
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Sprawdź swoją kartę" /></a>
        <asp:button class="test" type="button" runat="server" Text="Kontakt" OnClick="Przycisk_kontakt" />
          

    </div>
    <div class="content">
        
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="PAC_IMIE" HeaderText="PAC_IMIE" SortExpression="PAC_IMIE" />
                <asp:BoundField DataField="PAC_NAZWISKO" HeaderText="PAC_NAZWISKO" SortExpression="PAC_NAZWISKO" />
                <asp:BoundField DataField="PAC_DATAUR" HeaderText="PAC_DATAUR" SortExpression="PAC_DATAUR" />
                <asp:BoundField DataField="PAC_PESEL" HeaderText="PAC_PESEL" SortExpression="PAC_PESEL" />
                <asp:BoundField DataField="PAC_NRTELEFONU" HeaderText="PAC_NRTELEFONU" SortExpression="PAC_NRTELEFONU" />
                <asp:BoundField DataField="PAC_MAIL" HeaderText="PAC_MAIL" SortExpression="PAC_MAIL" />
                <asp:BoundField DataField="PAC_ADRES" HeaderText="PAC_ADRES" SortExpression="PAC_ADRES" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=Przychodnia;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT PAC_IMIE, PAC_NAZWISKO, PAC_DATAUR, PAC_PESEL, PAC_NRTELEFONU, PAC_MAIL, PAC_ADRES FROM PACJENT WHERE PACJENT.ID_PACJENT= @ID_PACJENT">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_PACJENT" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
        </form>
        <div style="font-size:24px; max-width:450px; display:block; padding-left:41%; font-family:Ebrima;padding-top:30px;">
        
        <label style="float:left">Imie pacjenta </label><label style="float:right;" ID="labelImie" runat="server"/><br /><hr />
        <label style="float:left">Nazwisko pacjenta </label><label style="float:right" ID="labelNaz" runat="server"/><br /><hr />
        <label style="float:left">Data urodzenia pacjenta </label><label style="float:right" ID="labelUro" runat="server"/><br /><hr />
        <label style="float:left">PESEL pacjenta </label><label style="float:right" ID="labelPESEL" runat="server"/><br /><hr />
        <label style="float:left">Telefon pacjenta </label><label style="float:right" ID="labelTel" runat="server"/><br /><hr />
        <label style="float:left">Email pacjenta </label><label style="float:right; " ID="labelMail" runat="server"/><br /><hr />
        <label style="float:left">Adres pacjenta </label><label style="float:right" ID="labelAdres" runat="server"/><br />
        </div>
    </div>
    <div class="footer">
      Projekt Przychodnia - Wykonanie: K.O.K.W 2021 &copy;
    </div>
  </div>
</body>
</html>
