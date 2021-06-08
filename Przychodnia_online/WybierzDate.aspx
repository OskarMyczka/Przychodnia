<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WybierzDate.aspx.cs" Inherits="Przychodnia_online.WybierzDate" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Content/Style.css">
    <title>PRZYCHODNIA</title>
</head>
<body>
  <form runat="server">
  <div class="container">
       
    <div class="header">

      <asp:ImageButton runat="server" src="Content/logo.png" alt="KOKW" class="logo" onclick="Przycisk_menu"/>
        <h1>PRZYCHODNIA</h1>
        <img src="Content/logout.png" alt="KOKW" class="logout">
    </div>

    <div class="menu" style="text-align:center">
      <h2 class="menuheader">Menu</h2>

          
        <asp:button class="test" type="button" runat="server" Text="Umów się na wizytę" OnClick="Przycisk_wizyty" />
        <asp:button class="test" type="button" runat="server" Text="Sprawdź swoje wizyty" OnClick="PrzyciskMoje" />
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Sprawdź swoją kartę" /></a>
        <asp:button class="test" type="button" runat="server" Text="Kontakt" OnClick="Przycisk_kontakt" />
          

    </div>
    <div class="content">
        
        
        <div style="padding-top: 50px; padding-right:180px; ">
        <h3>Dostępne terminy</h3>
        <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_TERMINU" DataSourceID="SqlDataSource1" AllowPaging="True" CaptionAlign="Bottom" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" BorderColor="Black" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID_LEKARZ" HeaderText="ID_LEKARZ" SortExpression="ID_LEKARZ" Visible="False" />
                <asp:BoundField DataField="LEK_IMIE" HeaderText="LEK_IMIE" SortExpression="LEK_IMIE" />
                <asp:BoundField DataField="LEK_NAZWISKO" HeaderText="LEK_NAZWISKO" SortExpression="LEK_NAZWISKO" />
                <asp:BoundField DataField="GODZINA" HeaderText="GODZINA" SortExpression="GODZINA" />
                <asp:BoundField DataField="DATA" HeaderText="DATA" SortExpression="DATA" />
                <asp:BoundField DataField="ID_TERMINU" HeaderText="ID_TERMINU" SortExpression="ID_TERMINU" InsertVisible="False" ReadOnly="True" Visible="False" />
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
                </div>
        <asp:Button ID="Button1" runat="server" Type="button" Text="Zaakceptuj" OnClick="WyborDaty" />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrzychodniaConnectionString %>" SelectCommand="SELECT ID_TERMINU, TERMINY.ID_LEKARZ, LEK_IMIE, LEK_NAZWISKO,  GODZINA, DATA FROM LEKARZ, TERMINY WHERE TERMINY.DOSTEPNY =1"></asp:SqlDataSource>
       
    </div>
     
    <div class="footer">
      Projekt Przychodnia - Wykonanie: K.O.K.W 2021 &copy;</div>
  </div>
  </form>
    
</body>
</html>

