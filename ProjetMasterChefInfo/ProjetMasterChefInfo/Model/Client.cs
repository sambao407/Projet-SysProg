using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    public enum ClientOrder {
        Hamburger,
        Lasagne,
        Cari_de_Poulet,
        Gaspacho,
        Salade_Chevre_Chaud,
        Muffin,
        Mousse_au_Chocolat,
        Salade_de_Fruit,
        Riz_au_Lait
    }

    class Client : IDisposable {

        private static List<bool> UsedCounter = new List<bool>();

        public int clientId { get; private set; }
        public ClientOrder clientorder { get; set; }
        public bool clientBooking { get; set; }

        public Client() {

            int nextIndex = GetAvailableIndex();
            if (nextIndex == -1) {

                nextIndex = UsedCounter.Count;
                UsedCounter.Add(true);
            }

            this.clientId = nextIndex;

            this.clientorder = clientorder;
            this.clientBooking = clientBooking;
        }

        public void Dispose() {

            UsedCounter[clientId] = false;
        }

        private int GetAvailableIndex() {

            for (int i = 0; i < UsedCounter.Count; i++) {

                if (UsedCounter[i] == false) {

                    return i;
                }
            }
            return -1;
        }

        public void printClient() {
            Console.WriteLine("Client[" + clientId + "]: My Order is " + clientorder + " and my booking is <<" + clientBooking + ">>");
        }
    }
}
