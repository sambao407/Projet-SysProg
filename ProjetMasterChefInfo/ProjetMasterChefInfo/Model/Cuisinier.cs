using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace ProjetMasterChefInfo.Model
{
    public class Cuisinier
    {
        public int id { get; set; }
        public bool state { get; set; }
        public Commande commande = null;
        public string nomcuisinier { get; set; }

        public Cuisinier(int id, string nomcuisinier, bool state, Commande commande)
        {
            this.id = id;
            this.nomcuisinier = nomcuisinier;
            this.state = state;
            this.commande = commande;
        }

        public void Cuisiner(Cuisinier cuisinier, Commande commande)
        {
            if(cuisinier.state == false)
            {
                if (cuisinier.commande.stateCommande == 2) // si la commande est terminée
                {
                    Console.WriteLine("Commande : " + cuisinier.commande.nom + " déjà terminée.");
                }

                else if (cuisinier.commande.stateCommande == 3) // si la commande est déjà en cours de préparation
                {
                    Console.WriteLine("Commande : " + cuisinier.commande.nom + " en cours de prépration par l'autre cuisinier.");
                }

                else if (cuisinier.commande.stateCommande == 1) // si la commande est déjà assignée à un cuisinier
                {
                    cuisinier.commande.stateCommande = 3; // commande en cours de préparation
                    Console.WriteLine("Commande : " + cuisinier.commande.nom + " est en cours par " + cuisinier.nomcuisinier);                    
                    Model.CommisCuisine Orlando = new Model.CommisCuisine(1, "Orlando", true);

                    // commis va chercher ingrédient
                    Orlando.ChercherIngredient(Orlando, commande);

                    // Commis va éplucher si besoin
                    Orlando.Eplucher(Orlando, commande);

                    cuisinier.commande.stateCommande = 2; // si la commande est terminée
                    Thread.Sleep(5000);
                    Console.WriteLine("Commande : " + cuisinier.commande.nom + " terminée par " + cuisinier.nomcuisinier);
                    cuisinier.state = true;
                }
            }

            else
            {
                Console.WriteLine("Aucune commande n'a été assigné au cuisinier : " + cuisinier.nomcuisinier);
            }
        }

    }
}
