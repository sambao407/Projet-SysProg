using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{

    class ChefRang
    {

        public int id { get; set; }

        public ChefRang(int id)
        {
            this.id = id;
        }

        public void takeOrder(Client client)
        {

            //client.giveOrder()  ;
            //Console.WriteLine("ChefRang[" + id + "]: <<" + client.order + ">> was added to pending orders");
            Comptoir comptoir = new Comptoir(0);
            comptoir.checkCounter();
        }
    }
}
