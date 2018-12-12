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
        public string nom;
        public Recette recette;
        public string composant1;
        public string composant2;
        public string composant3;
        public string composant4;

        public Commande(int id, int stateCommande, Recette recette)
        {
            this.id = id;
            this.stateCommande = stateCommande;
            this.nom = recette.nom;
            this.composant1 = recette.composant_1;
            this.composant2 = recette.composant_2;
            this.composant3 = recette.composant_3;
            this.composant4 = recette.composant_4;
        }


    }
}
