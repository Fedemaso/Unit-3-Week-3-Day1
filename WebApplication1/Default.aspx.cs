using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class PreventivoAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }


        protected void CarModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            decimal[] prezzi = { 220000, 350000, 450000, 250000, 220000, 5000000 };                  // prezzi delle macchine e metodo per inserirlo nella casella "prezzo di partenza"

            int indiceSelezione = CarModel.SelectedIndex;
            decimal prezzoAuto = prezzi[indiceSelezione];

            
            PrezzoAuto.Text = $"€{prezzoAuto:F2}";
        }



        protected void btnCalcola_Click(object sender, EventArgs e)
        {
            
            int indiceSelezione = CarModel.SelectedIndex;

           
            decimal[] prezzi = { 220000, 350000, 450000, 250000, 220000, 5000000 };

            decimal prezzoAuto = prezzi[indiceSelezione];
            decimal costoOptionals = 0;

            if (VerniceMetallizzata.Checked)
                costoOptionals += 330;
            if (FariXeno.Checked)
                costoOptionals += 180;
            if (NavigazioneSatellitare.Checked)
                costoOptionals += 1800;
            if (LineAssistant.Checked)
                costoOptionals += 2000;
            if (RuotaDiScorta.Checked)
                costoOptionals += 155;
            if (SediliVolantePelle.Checked)
                costoOptionals += 700;

            int anniGaranzia = int.Parse(ddlGaranzia.SelectedValue);
            decimal costoGaranzia = anniGaranzia * 120;

            decimal totale = prezzoAuto + costoOptionals + costoGaranzia;

            PrezzoAuto.Text = $"€{prezzoAuto:F2}";
            CostoOptionals.Text = $"€{costoOptionals:F2}";
            CostoGaranzia.Text = $"€{costoGaranzia:F2}";
            Totale.Text = $"€{totale:F2}";
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string selectedValue = CarModel.SelectedItem.Value;
            Image1.ImageUrl = $"~/Content/imgs/{selectedValue}";


           

        }

     

    }
}
