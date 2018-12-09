using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

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
            if (cuisinier.state == true) // si le cuisinier est prêt
            {
                if (commande.stateCommande == 0) // si la commande est pas faite
                {
                    cuisinier.commande = commande;
                    cuisinier.state = false;
                    commande.stateCommande = 1;
                    Console.WriteLine("Commande " + cuisinier.commande.nomcommande + " prise en compte par " + cuisinier.nomcuisinier);
                }

                else if (commande.stateCommande == 1) // si la commande est en cours
                {
                    Console.WriteLine("Commande en attente d'être preparée par l'autre cuisinier.");
                }

                else if (commande.stateCommande == 2) // si la commande est terminée
                {
                    Console.WriteLine("Commande terminée.");
                }

            }

            else // si le cuisinier est occupé
            {
                Console.WriteLine("Cuisinier " + cuisinier.nomcuisinier + " est occupé.");
            }
        }

        public void CheckerStock(Stock stock)
        {
            // Avec QuantiteIngredient = SELECT Quantité FROM Ingredient WHERE Quantité < 20 // 
            //if (QuantiteIngredient < 20)
           // {
                // Avec NomIngredient = SELECT Nom_Ingredient FROM Ingredient WHERE Quantite < 20// 
           //     Console.WriteLine("Il manque : " + stock.NomIngredient);
           // }
          //  else
          //  {
           //     Console.WriteLine("Il ne manque aucun ingrédient.");
           // }
        }

    }
}
