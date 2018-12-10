using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    public class Materiel
    {
        public int ID { get; set; }
        public string nom { get; set; }
        public int number { get; set; }
        public bool state = true;

        public Materiel(int ID, string nom, int number, bool state)
        {
            this.nom = nom;
            this.ID = ID;
            this.number = number;
            this.state = state;
        }
    }
}
