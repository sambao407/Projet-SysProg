using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    class Table {

        public int tableId { get; set; }
        public int[] tableSize { get; set; }

        public Table() {

            this.tableId = tableId;
            this.tableSize = new int[] { 2, 4, 6, 8, 10 };
        }
    }
}