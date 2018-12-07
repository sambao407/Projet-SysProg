using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    public enum Ingredient { ingA, ingB, ingC }

    class Orders {

        public int id { get; set; }
        public Ingredient ingredient { get; set; }

        public Orders(int id, Ingredient ingredient) {
            this.id = id;
            this.ingredient = ingredient;
        }
    }
}
