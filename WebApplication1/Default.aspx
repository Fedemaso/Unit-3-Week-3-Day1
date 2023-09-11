<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.PreventivoAuto" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Preventivo Automobile</title>
    <link rel="stylesheet" href="styles.css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    


</head>
    <body style="background-color:gray;  font-weight:600">
    <form id="form1" runat="server">
        <div class="text-center">
        <h1>Quanto costa un sogno?</h1>

        <div class="my-5">

            <h2 class="my-3">Scegli il modello dal catalogo</h2>
        

        <asp:DropDownList  ID="CarModel" runat="server" OnSelectedIndexChanged="CarModel_SelectedIndexChanged" AutoPostBack="true" CssClass="my-3" >
            <asp:ListItem value="mercedes.jpg" Text="Mercedes AMG GT" />
            <asp:ListItem value="lamborghini.jpg" Text="Lamborghini Aventador" />
            <asp:ListItem value="ferrari.jpg" Text="Ferrari Stradale"  />
            <asp:ListItem value="porsche.jpg" Text="Porsche 911 GT3 RS"  />
            <asp:ListItem value="nissan.jpg" Text="Nissan Nismo GT-R" />
            <asp:ListItem value="tartan.jpg" Text="Tartan Prancer"  />
        </asp:DropDownList>

        <div class="d-flex flex-column align-items-center">
        <asp:Image ID="Image1" Width="400px" runat="server" />
        
            <asp:Button CssClass="btn btn-dark my-4" ID="Button1" runat="server" Text="Scegli" OnClick="Button1_Click" />
        </div>


        </div>
            <div class="my-5 d-flex flex-column">
        <h2 class="my-3">Optional:</h2>
        <div class="mx-4"><asp:CheckBox ID="VerniceMetallizzata" runat="server" Text="Vernice Metallizzata (€330.00)" /></div>
        <div class="mx-4"><asp:CheckBox ID="FariXeno" runat="server" Text="Fari Xeno (€180.00)" /></div>
        <div class="mx-4"><asp:CheckBox ID="NavigazioneSatellitare" runat="server" Text="Navigazione Satellitare (€1,800.00)" /></div>
        <div class="mx-4"><asp:CheckBox ID="LineAssistant" runat="server" Text="Line Assistant (€2,000.00)" /></div>
        <div class="mx-4"><asp:CheckBox ID="RuotaDiScorta" runat="server" Text="Ruota di Scorta (€155.00)" /></div>
        <div class="mx-4"><asp:CheckBox ID="SediliVolantePelle" runat="server" Text="Sedili/Volante in Pelle (€700.00)" /></div>
                </div>
            <div class="my-5">
        <h2 class="my-3">Anni di Garanzia:</h2>
        <asp:DropDownList ID="ddlGaranzia" runat="server">
            <asp:ListItem Text="1 Anno" Value="1" />
            <asp:ListItem Text="2 Anni" Value="2" />
            <asp:ListItem Text="3 Anni" Value="3" />
            <asp:ListItem Text="4 Anni" Value="4" />
        </asp:DropDownList>

                </div>
         <div class="my-5">


        <asp:Button CssClass="btn btn-dark my-4" ID="btnCalcola" runat="server" Text="Calcola Preventivo" OnClick="btnCalcola_Click" />

        <div id="risultati" runat="server">
            <h2 class="my-3" >Costo Totale:</h2>
            <p>Prezzo di Partenza: <asp:Label ID="PrezzoAuto" runat="server" Text="€0.00" /></p>
            <p>Costo Optionals: <asp:Label ID="CostoOptionals" runat="server" Text="€0.00" /></p>
            <p>Costo Garanzia: <asp:Label ID="CostoGaranzia" runat="server" Text="€0.00" /></p>
            <p>Totale: <asp:Label ID="Totale" runat="server" Text="€0.00" /></p>
        </div>
             </div>
   </div> </form>
</body>
</html>





























