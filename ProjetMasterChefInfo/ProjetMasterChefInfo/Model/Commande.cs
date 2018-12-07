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
        public bool stateCommande { get; set; }
        public string composition { get; set; }
        public int prix { get; set; }

        public Commande(int id, bool stateCommande, string composition, int _prix){
            this.id = id;
            this.stateCommande = stateCommande;
            this.composition = composition;
            this.prix = prix;
        }


    }
}
