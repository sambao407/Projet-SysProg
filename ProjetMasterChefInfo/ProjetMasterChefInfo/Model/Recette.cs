using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    public enum myIngredient
    {
        Pain,
        Tomate,
        Ail,
        Steack,
        Salade
    }

    class Recette
    {
        public int ID { get; set; }
        public string nom { get; set; }
        public myIngredient myingredient { get; set; }
        

       

        public Recette()
        {
            this.ID = ID;
            this.nom = nom;
            this.myingredient = myingredient;
            Console.WriteLine("Recette : " + this.nom + " créé. Les ingrédients sont: " + this.myingredient);
        }


    }
}
