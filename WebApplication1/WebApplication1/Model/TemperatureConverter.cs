using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Model
{
    public class TemperatureConverter
    {
        public static int CelciusToFarenheit(int degreesC) {

            double farenheitD = Math.Round(degreesC * 1.8 + 32);

            int farenheit = (int)farenheitD;

                return farenheit;
        }

        public static int FarenheitToCelcius(int degreesF){

            int celcius = (int)Math.Round((degreesF - 32) * 5d / 9);
            
            return celcius;

        }
    }
}