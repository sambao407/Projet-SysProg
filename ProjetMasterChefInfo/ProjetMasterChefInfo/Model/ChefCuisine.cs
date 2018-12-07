using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    public class ChefCuisine
    {

        public int id { get; set; }
        public bool state { get; set; }

        public ChefCuisine(int id, bool state){
            this.id = id;
            this.state = state;
        }

        public void AssignerTache(Commande commande, Cuisinier cuisinier){
            if(cuisinier.state == true){
                cuisinier.commande = commande;
                Console.WriteLine("Commande prise en compte");
                Console.WriteLine(cuisinier.commande.composition);
            } 

            else{
                Console.WriteLine("Commande en attente");
            }

            
        }
    }
}


