<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="Przychodnia_online.Logowanie" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Content/stylelogowanie.css">
    <title>PRZYCHODNIA</title>
</head>
  <body>
    <div class="parent clearfix">
      <div class="bg-illustration">

      </div>

      <div class="login">
        <div class="container">
          <h1>Przychodnia - Zaloguj sie</h1>

          <div class="login-form">
            <form runat="server">
              <asp:TextBox runat="server" type="text" placeholder="Pesel" id="InputPesel"/>
              <asp:TextBox runat="server" type="password" placeholder="Haslo" id="InputHaslo"/>
          

              <asp:button class="button" runat="server" ID="Loguj" OnClick="Loguj_Click" Text="Zaloguj" type="submit"/>

            </form>
          </div>

        </div>
        </div>
    </div>

  </body>
</html>

