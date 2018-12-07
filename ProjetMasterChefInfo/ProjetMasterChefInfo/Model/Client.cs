using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    public enum Order{ Entree, Plat, Dessert }

    class Client {

        public int id { get; set; }
        public Order order { get; set; }
        public bool bookState { get; set; }

        public Client(int id, Order order, bool bookState) {
            this.id = id;
            this.order = order;
            this.bookState = bookState;
        }

        public void initClient() {
            Console.WriteLine("Client[" + id + "]: My bookState is <<" + bookState + ">>");
        }

        public void giveOrder() {
            Console.WriteLine("Client[" + id + "]: My order is <<" + order + ">>");
        }
    }
}
