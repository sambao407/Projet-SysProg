using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace ProjetMasterChefInfo.Model
{
    //private SqlConnection cn;
    //private SqlCommand cmd;
    //private SqlDataReader rdr;
    //private DataTa dt;

    class TestConnexion
    {
      
      public void connect()
        {
       
            SqlConnection cn = new SqlConnection("Data Source=GEARLESS-JOE\\SAMBASQL;Initial Catalog=ProjetSysProg;Integrated Security=True");
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
    }
}
