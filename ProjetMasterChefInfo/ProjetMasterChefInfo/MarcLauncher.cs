using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo {

    class MarcLauncher {

        static void Main() {

            /*
            int myInput;
            int.TryParse(Console.ReadLine(), out myInput);
            Controler.Simulation simulation = new Controler.Simulation();
            simulation.startSimulation(true, myInput);
            */

            int myInput;
            Console.WriteLine("Number of clients :");
            int.TryParse(Console.ReadLine(), out myInput);

            Model.RandomClientFactory rdmClientFactory = new Model.RandomClientFactory();
            List<Model.Client> clientList = rdmClientFactory.BuildList(myInput);


            for (int i = 0; i < myInput; i++) {

                clientList[i].printClient();
            }
            Console.ReadLine();
        }
    }
}
