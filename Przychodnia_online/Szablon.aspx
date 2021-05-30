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

      <a href="index.html"><img src="Content/logo.png" alt="KOKW" class="logo">
        <h1>PRZYCHODNIA</h1></a>
        <img src="Content/logout.png" alt="KOKW" class="logout">
    </div>

    <div class="menu" style="text-align:center">
      <h2 class="menuheader">Menu</h2>

          <form runat="server">
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Wyświetl lekarzy" /></a>
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Umów się na wizytę" /></a>
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Sprawdź swoje wizyty" /></a>
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Sprawdź swoją kartę" /></a>
        <a href="WyswietlLekarzy.php"><asp:button class="test" type="button" runat="server" Text="Kontakt" /></a>
          </form>

    </div>
    <div class="content">
      
    </div>
    <div class="footer">
      Projekt Przychodnia - Wykonanie: K.O.K.W 2021 &copy;
    </div>
  </div>
</body>
</html>
