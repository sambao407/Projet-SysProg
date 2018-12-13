using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model {

    class RandomClientFactory {

        private Random rdm = new Random();

        public Client Build() {
            
            Client client = new Client();

            Array clientList = Enum.GetValues(typeof(ClientOrder));
            ClientOrder randomClient = (ClientOrder)clientList.GetValue(rdm.Next(clientList.Length));
            client.clientorder = randomClient;

            client.clientBooking = rdm.Next(2) < 1 ? true : false;

            return client;
        }

        public List<Client> BuildList(int size) {

            List<Client> clientList = new List<Client>();

            for (int i = 0; i < size; i++) {

                clientList.Add(Build());
            }
            return clientList;
        }
    }
}

