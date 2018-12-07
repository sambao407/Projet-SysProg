using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    class BDDConnection
    {
        private string cnx;
        private string rq_sql;
        private System.Data.SqlClient.SqlConnection oCnx;
        private System.Data.SqlClient.SqlDataAdapter oDA;
        private System.Data.SqlClient.SqlCommand oCmd;
        private System.Data.DataSet oDs;

        public BDDConnection()
        {
            this.cnx = @"Data Source= DESKTOP-505GH5Q (DESKTOP-505GH5Q\taver);
            Integrated Security=False;
            User ID=CNX_A2_WS2;
            Password=password;
            Connect Timeout=15;
            Encrypt=False;
            TrustServerCertificate=False";
        }
    }
}
