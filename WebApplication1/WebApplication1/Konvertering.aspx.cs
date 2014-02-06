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
        {   
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Farenheit.Checked || Celcius.Checked){
               
                int starttemp = int.Parse(StartTemp.Text);
                int endtemp = int.Parse(EndTemp.Text);
                int steps = int.Parse(Steps.Text);

                TempTable.Visible = true;

                int rowcount = 0;

                for (int i = starttemp; endtemp >= i; i += steps){

                    rowcount++;

                    TableRow tRow = new TableRow();

                    if (rowcount % 2 == 0) {

                        tRow.CssClass = "color";
                    
                    }

                    TempTable.Rows.Add(tRow);

                    for (int cellctr = 0; cellctr < 2; cellctr++) {

                        TableCell tCell = new TableCell();

                        //Första raden
                        if (cellctr == 0)
                        {

                            tCell.Text = String.Format("{0}", i);
                        }

                        //andra raden

                        else {

                            string FarString = "°F";
                            string CelString = "°C";

                                if (Farenheit.Checked)
                                {
                                    Literal1.Text= String.Format(Literal1.Text, CelString);
                                    Literal2.Text=String.Format(Literal2.Text, FarString);

                                    tCell.Text = String.Format("{0}",TemperatureConverter.CelciusToFarenheit(i));
                                }

                                if (Celcius.Checked)
                                {
                                    Literal1.Text = String.Format(Literal1.Text, FarString);
                                    Literal2.Text=String.Format(Literal2.Text, CelString);

                                    tCell.Text = String.Format("{0}",TemperatureConverter.FarenheitToCelcius(i));
                                }                            
                        }

                        tRow.Cells.Add(tCell);
                       
                        
                    } 

                }


            } else{

                try
                {

                    throw new Exception();

                }

                catch (Exception)
                {

                    ModelState.AddModelError(String.Empty, "Välj vilken temperaturenhet du vill konvertera till!");

                }


            }
        }
    }
}