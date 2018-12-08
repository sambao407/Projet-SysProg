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
        public string nomchefcuisine { get; set; }

        public ChefCuisine(int id, string nomchefcuisine, bool state)
        {
            this.id = id;
            this.nomchefcuisine = nomchefcuisine;
            this.state = state;
        }

        public void AssignerTache(Commande commande, Cuisinier cuisinier)
        {
            if (cuisinier.state == true)
            {
                if (commande.stateCommande == 1)
                {
                    cuisinier.commande = commande;
                    cuisinier.state = false;
                    commande.stateCommande = 2;
                    Console.WriteLine("Commande " + cuisinier.commande.nomcommande + " prise en compte par " + cuisinier.nomcuisinier);
                }

                else if (commande.stateCommande == 2)
                {
                    Console.WriteLine("Commande en cours.");
                }

                else if (commande.stateCommande == 3)
                {
                    Console.WriteLine("Commande terminée.");
                }

            }

            else
            {
                Console.WriteLine("Cuisinier " + cuisinier.nomcuisinier + " est occupé.");
            }


        }
    }
}
