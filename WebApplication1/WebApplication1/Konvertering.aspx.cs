using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Model;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
<<<<<<< HEAD
        {   
            
=======
        {

>>>>>>> g
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int starttemp = int.Parse(StartTemp.Text);
                int endtemp = int.Parse(EndTemp.Text);
                int steps = int.Parse(Steps.Text);

                if (Farenheit.Checked)
                {
                    Col1.Text = "°F";
                    Col1.Text = "°C";
                }

                int rowcount = 0;
                for (int i = starttemp; endtemp >= i; i += steps)
                {
                    rowcount++;

                    TableRow tRow = new TableRow();
                    TempTable.Rows.Add(tRow);

                    if (rowcount % 2 == 0)
                    {
                        tRow.CssClass = "color";
                    }

                    //Första kolumnen
                    TableCell tCell = new TableCell();
                    tRow.Cells.Add(tCell);
                    tCell.Text = i.ToString();

                    //andra kolumnen
                    tCell = new TableCell();
                    tRow.Cells.Add(tCell);
                    tCell.Text = Celcius.Checked ? TemperatureConverter.CelciusToFarenheit(i).ToString() : TemperatureConverter.FarenheitToCelcius(i).ToString();
                }

                TempTable.Visible = true;
            }
        }
    }
}