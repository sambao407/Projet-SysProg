using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
    }
}
