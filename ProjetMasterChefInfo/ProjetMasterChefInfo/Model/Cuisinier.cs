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
        public Commande commande { get; set; }

        public Cuisinier(int id, bool state, Commande commande){
        this.id = id;
        this.state = state;
        this.commande = commande;

        }
    }


}
