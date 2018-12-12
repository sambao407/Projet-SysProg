using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    class RecetteFactory
    {
        public Recette Build()
        {
            Recette recette = new Recette();

            Array ingredientlist = Enum.GetValues(typeof(myIngredient));

        }
    }
}
