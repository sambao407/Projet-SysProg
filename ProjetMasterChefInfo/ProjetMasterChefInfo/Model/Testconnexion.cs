using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ProjetMasterChefInfo.Model
{
    

    class TestConnexion
    {
         
        private string result;

        public void connect()
        {
            SqlConnection cn = new SqlConnection("Data Source=GEARLESS-JOE;Initial Catalog=ProjetSysProg;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Ingredient", cn);
            cn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Console.WriteLine(rdr["Nom_Ingredient"] + "  " + rdr["Fraicheur_Max"] + "  " + rdr["Lieu_Stockage"]);
            }
            rdr.Close();

            cn.Close();
 
        }

        public string Check_Stock()
        {
            this.result = "SELECT Nom_Ingredient, Quantite FROM Ingredient INNER JOIN Recette ON Recette.RecetteID = Ingredient.ID_Ingredient";
            return this.result;
        }

        public string Upgrade_Stock()
        {
            this.result = "UPDATE Ingredient SET Quantite = 20 WHERE Quantite = 0";
            return this.result;
        }

        public string Select_Command()
        {
            this.result = "UPDATE Ingredient SET Quantite = Quantite - 1 WHERE Recette.Nom_Recette = Recette_Name;";
            return this.result;
        }


    }
}
