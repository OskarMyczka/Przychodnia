<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="Przychodnia_online.Pac_index" %>

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
       <form runat="server">
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
          </form>

    </div>
    <div class="content">
        <div style="font-size:24px; max-width:500px; display:block; padding-left:41%; font-family:Ebrima;padding-top:30px;">
        
        <label style="float:left">Numer telefonu </label><label style="float:right;">0700694202137</label><br /><hr />
        <label style="float:left">Ulica </label><label style="float:right">Unii Lubelskiej 31C, 78-100 Kołobrzeg</label><br /><hr />
        <label style="float:left">Email</label><label style="float:right">PrzychodniaDlaLudzi@gmail.com</label><br /><hr />
            </div>
        <div style="float:left; padding-left:440px;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37370.10308368605!2d15.503971650041617!3d54.16889207468027!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470015853841215b%3A0xd5b04fb2f603c1c5!2sPrzychodnia%20Rodzinna!5e0!3m2!1spl!2spl!4v1623014487259!5m2!1spl!2spl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        </div>
    <div class="footer">
      Projekt Przychodnia - Wykonanie: K.O.K.W 2021 &copy;
    </div>
  </div>
</body>
</html>
