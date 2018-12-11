using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
   public class Recette
    {
        public int ID { get; set; }
        public string nom { get; set; }
        public string composant_1 { get; set; }
        public string composant_2 { get; set; }
        public string composant_3 { get; set; }
        public string composant_4 { get; set; }
        public int prix { get; set; }

        public Recette(int ID, string nom, string composant_1, string composant_2,string composant_3, string composant_4, int prix)
        {
            this.ID = ID;
            this.nom = nom;
            this.composant_1 = composant_1;
            this.composant_2 = composant_2;
            this.composant_3 = composant_3;
            this.composant_4 = composant_4;
            this.prix = prix;
            Console.WriteLine("Recette : " + this.nom + " créé.");
        }
    }
}
