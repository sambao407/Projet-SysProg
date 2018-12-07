using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    class Comptoir {

        public int plates { get; set; }
        public int pendorder { get; set; }

        public Comptoir(int plates) {
            this.plates = plates;
            pendorder = 0;
        }

        public void checkCounter() {
            ChefRang chefrang = new ChefRang(1);
            pendorder++;
            Console.WriteLine("ChefRang[" + chefrang.id + "]: There are <<" + plates + ">> plates ready to serve");
            Console.WriteLine("ChefRang[" + chefrang.id + "]: There are <<" + pendorder + ">> pending orders");
        }
    }
}
