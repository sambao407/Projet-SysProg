using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    class Table {

        public int tableId { get; set; }
        public int tableSize { get; set; }
        public int[] sittedClient { get; set; }

        public Table() {

            this.tableId = tableId;
            this.tableSize = tableSize;
            this.sittedClient = sittedClient;
        }

        public Table CreerTable() {

            Table table = new Table();
            // --
            return table;
        }

        public List<Table> CreerTableList(int size) {

            List<Table> tableList = new List<Table>();

            for (int i = 0; i < size; i++) {

                tableList.Add(CreerTable());
            }
            return tableList;
        }
    }
}