using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    public class Ingredient
    {
        public string nom;
        public int nombre;

        public Ingredient(string nom, int nombre)
        {
            this.nom = nom;
            this.nombre = nombre;
        }
    }
}
