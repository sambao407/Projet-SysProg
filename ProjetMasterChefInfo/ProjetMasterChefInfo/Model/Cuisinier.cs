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
                    Console.WriteLine("Commande : " + cuisinier.commande.nomcommande + " déjà terminée.");
                }

                else if (cuisinier.commande.stateCommande == 3) // si la commande est déjà prise par un autre cuisinier
                {
                    Console.WriteLine("Commande : " + cuisinier.commande.nomcommande + " est déjà prise en compte par l'autre cuisinier.");
                }

                else if (cuisinier.commande.stateCommande == 1) // si la commande est déjà assignée à un cuisinier
                {
                    cuisinier.commande.stateCommande = 3; // commande assignée à au cuisinier
                    Console.WriteLine("Commande : " + cuisinier.commande.nomcommande + " est en cours.");
                    cuisinier.commande.stateCommande = 2; // si la commande est terminée
                    Thread.Sleep(5000);
                    Console.WriteLine("Commande : " + cuisinier.commande.nomcommande + " terminée.");
                }
            }

            else
            {
                Console.WriteLine("Aucune commande n'a été assigné au cuisinier : " + cuisinier.nomcuisinier);
            }
        }

    }
}
