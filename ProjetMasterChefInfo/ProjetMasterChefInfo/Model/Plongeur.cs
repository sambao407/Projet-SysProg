using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    public class Plongeur
    {
        public int ID { get; set; }
        public bool state { get; set; }
        public string nom { get; set; }
        public Materiel materiel;

        public Plongeur(string nom, bool state)
        {
            this.nom = nom;
            this.state = state;
        }

        public void NettoyerOutilCuisiner(Plongeur plongeur, Materiel materiel)
        {
            if (plongeur.state == true)
            {
                if (materiel.nom == "OutilCuisine")
                {
                    plongeur.state = false;
                    for (materiel.ID = 0; materiel.ID <= 50; materiel.ID++)
                    {
                        if (materiel.state == false)
                        {
                            Console.WriteLine("Nettoyage des outils de cuisine.");
                            materiel.state = true;
                        }
                    }
                    Console.WriteLine("Les outils de cuisine sont à présent propre.");
                    plongeur.state = true;
                }
            }
        }

        public void LaveVaisselle(Plongeur plongeur, Materiel materiel)
        {
            if (plongeur.state == true)
            {
                if (materiel.nom == "Verre")
                {
                    plongeur.state = false;
                    for (materiel.ID = 0; materiel.ID <= 50; materiel.ID++)
                    {
                        if (materiel.state == false)
                        {
                            Console.WriteLine("Nettoyage des verres.");
                            materiel.state = true;
                        }
                    }
                    Console.WriteLine("Les verres sont à présent propre.");
                    plongeur.state = true;
                }

                if (materiel.nom == "Assiette")
                {
                    plongeur.state = false;
                    Console.WriteLine("ici");

                   // for(materiel.number =)
                        if (materiel.state == false)
                        {
                            Console.WriteLine(materiel.ID);
                            Console.WriteLine(materiel.state);
                            Console.WriteLine("Nettoyage des assiettes.");
                            materiel.state = true;
                        }

                    Console.WriteLine("Les assiettes sont à présent propre.");
                    plongeur.state = true;
                }

                if (materiel.nom == "Couvert")
                {
                    plongeur.state = false;
                    for (materiel.ID = 0; materiel.ID <= 50; materiel.ID++)
                    {
                        if (materiel.state == false)
                        {
                            Console.WriteLine("Nettoyage des couverts.");
                            materiel.state = true;
                        }
                    }
                    Console.WriteLine("Les couverts sont à présent propre.");
                    plongeur.state = true;
                }
            }
        }
    }
}