using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    public class Commande
    {
        public int id { get; set; }
        public int stateCommande { get; set; }
        public string nomcommande { get; set; }
        public int prix { get; set; }

        public Commande(int id, int stateCommande, string nomcommande, int prix)
        {
            this.id = id;
            this.stateCommande = stateCommande;
            this.nomcommande = nomcommande;
            this.prix = prix;
        }


    }
}
