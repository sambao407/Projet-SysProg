using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace ProjetMasterChefInfo.Model
{
    class CommisCuisine
    {
        public int ID { get; set; }
        public bool state { get; set; }
        public string nom { get; set; }

        public CommisCuisine(int ID, string nom, bool state)
        {
            this.ID = ID;
            this.nom = nom;
            this.state = state;
        }

        public void Eplucher(CommisCuisine commisCuisine, Commande commande)
        {
            if (commande.stateCommande == 3) // si la commande est déjà en cours de préparation
            {
                if (commande.composant1 == "Tomate" | commande.composant2 == "Tomate" | commande.composant3 == "Tomate" | commande.composant4 == "Tomate" |
                    commande.composant1 == "Patate" | commande.composant2 == "Patate" | commande.composant3 == "Patate" | commande.composant4 == "Patate" |
                    commande.composant1 == "Oignon" | commande.composant2 == "Oignon" | commande.composant3 == "Oignon" | commande.composant4 == "Oignon" |
                    commande.composant1 == "Ail" | commande.composant2 == "Ail" | commande.composant3 == "Ail" | commande.composant4 == "Ail" |
                    commande.composant1 == "Comcombre" | commande.composant2 == "Comcombre" | commande.composant3 == "Comcombre" | commande.composant4 == "Comcombre")
                {
                    commisCuisine.state = false;
                    Console.WriteLine("Commis de cuisine va éplucher.");
                    Thread.Sleep(2000);
                    commisCuisine.state = true;
                    Console.WriteLine("Commis de cuisine a fini d'éplucher."); 
                }
            }

            else if (commande.stateCommande == 2)
            {
                Console.WriteLine("La commande est déjà terminée.");
            }

            else if (commande.stateCommande == 1)
            {
                Console.WriteLine("La commande est déjà assignée mais pas en cours.");
            }

            else
            {
                Console.WriteLine("La commande n'est même pas assignée.");
            }
        }

        public void ChercherIngredient(CommisCuisine commisCuisine, Commande commande)
        {
            if (commande.stateCommande == 3) // si la commande est déjà en cours de préparation
            {
                commisCuisine.state = false;
                Console.WriteLine("Le commis va chercher les ingrédients.");
                Thread.Sleep(2000);
                Model.Stock.Instance.Decrement(commande.composant1);
                Model.Stock.Instance.Decrement(commande.composant2);
                Model.Stock.Instance.Decrement(commande.composant3);
                Model.Stock.Instance.Decrement(commande.composant4);       
                commisCuisine.state = true;
            }

            else if (commande.stateCommande == 2)
            {
                Console.WriteLine("La commande est déjà terminée.");
            }

            else if (commande.stateCommande == 1)
            {
                Console.WriteLine("La commande est déjà assignée mais pas en cours.");
            }

            else
            {
                Console.WriteLine("La commande n'est même pas assignée.");
            }
        }
    }
}
