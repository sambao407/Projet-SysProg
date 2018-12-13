using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    class MaitreHotel {

        public int id { get; set; }

        public MaitreHotel(int id) {
            this.id = id;
        }

        public void checkBooking() {

            //Client client = new Client(1, Order.Entree, true);
            Table table = new Table(1, 1);
            //client.initClient();
            Console.WriteLine("MaitreHotel[" + id + "]: You're assigned to Table[" + table.id + "] with <<" + table.chairs[1] + ">> available chairs");
            ChefRang chefrang = new ChefRang(1);
            //chefrang.takeOrder(client);
        } 
    } 
}
