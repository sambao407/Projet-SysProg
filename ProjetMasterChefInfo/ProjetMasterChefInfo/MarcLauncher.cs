using ProjetMasterChefInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo
{

    class MarcLauncher
    {

<<<<<<< HEAD
        static void Main() {
=======
        static void Main()
        {


            // int myInput;
            // int.TryParse(Console.ReadLine(), out myInput);
            //  Controler.Simulation simulation = new Controler.Simulation();
            //   simulation.startSimulation(true, myInput);

>>>>>>> origin/ModelTest

            int myInput;
            Console.WriteLine("Number of clients :");
            int.TryParse(Console.ReadLine(), out myInput);

            Model.RandomClientFactory rdmClientFactory = new Model.RandomClientFactory();
            List<Model.Client> clientList = rdmClientFactory.BuildList(myInput);

<<<<<<< HEAD
            for (int i = 0; i < myInput; i++) {
=======

            Comptoir.SetupServer();
            ChefRang.Connect();

            for (int i = 0; i < myInput; i++)
            {
>>>>>>> origin/ModelTest

                clientList[i].printClient();
                ChefRang.Send(clientList[i].clientorder.ToString());
            }

            Console.ReadLine();
        }
    }
}
