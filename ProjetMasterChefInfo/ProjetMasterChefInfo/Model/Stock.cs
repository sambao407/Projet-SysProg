using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProjetMasterChefInfo.Model;

namespace ProjetMasterChefInfo.Model {
   
    public sealed class Stock
    {
        private static Stock instance = null;
        private static readonly object padlock = new object();

        public static Stock Instance
        {
            get
            {
                lock (padlock)
                {
                    if(instance == null)
                        instance = new Stock();

                    return instance;
                }
            }
        }

        private List<Ingredient> Ingredients = new List<Ingredient>();

        public void CreateStock(List<Ingredient> ingredients)
        {
            this.Ingredients = ingredients;
        }

        public void AddToStock(Ingredient ingredient)
        {
            this.Ingredients.Add(ingredient);
        }

        public void Decrement(string ingredient)
        {
            Console.WriteLine(ingredient);
            Ingredient temp = Ingredients.FirstOrDefault(x => x.nom.Equals(ingredient));
            
            if(temp != null)
                temp.nombre -= 1;
                
            
            Console.WriteLine(temp.nombre);
        }
    }
}
