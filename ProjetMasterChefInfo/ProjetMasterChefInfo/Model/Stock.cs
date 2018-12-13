using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    /*public enum StockIngredient
    {
        Tomate = 50,
        Patate = 35,
        Carotte = 50,
        Ail = 50,
    }*/

   
    public class Stock {

        //public StockIngredient stockingredient { get; set; }
        public List<Ingredient> Ingredient = new List<Ingredient>();

        public Stock()
        {
            this.Ingredient = Ingredient;
        }

        public void Decrement()
        {
          /*  Stock stock = new Stock();
            StockIngredient.Patate -= 1;
            Console.WriteLine(StockIngredient.Patate - 1);*/
        }
    }

    public class Ingredient{

        public string nom;
        public int nombre;

        public Ingredient(string nom, int nombre)
        {
            this.nom = nom;
            this.nombre = nombre;
        }
    }


}
