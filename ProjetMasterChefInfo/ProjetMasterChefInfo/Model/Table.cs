using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    class Table
    {
        public int id { get; set; }
        public int rank { get; set; }
        public int[] chairs { get; set; }

        public Table(int id, int rank)
        {
            this.id = id;
            this.rank = rank;
            chairs = new int[5] { 2, 4, 6, 8, 10 };
        }
    }
}
