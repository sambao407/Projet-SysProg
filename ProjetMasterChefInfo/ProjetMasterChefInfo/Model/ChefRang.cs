using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Configuration;

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

        private static Socket _clientSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
        

        public static void Send(string req)
        {
            int i = 0;
            Client client = new Client();
            while (i == 0)
            {
                i++;
                byte[] buffer = Encoding.ASCII.GetBytes(req);
                _clientSocket.Send(buffer);

                byte[] receivedBuf = new byte[1024];
                int rec = _clientSocket.Receive(receivedBuf);
                byte[] data = new byte[rec];
                Array.Copy(receivedBuf, data, rec);
                Console.WriteLine("Received: " + Encoding.ASCII.GetString(data));
            }

        }
        public static void Connect()
        {
          //  int attemps = 0;
            while (!_clientSocket.Connected)
            {
                try
                {
                 //   attemps++;
                    _clientSocket.Connect(IPAddress.Loopback, 100);
                }
                catch (SocketException)
                {
                    Console.Clear();
                //    Console.WriteLine("Connection Attemps: " + attemps.ToString());
                }
            }


        }

    }
}
