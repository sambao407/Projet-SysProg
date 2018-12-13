using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Controler {

    class Simulation {

        public bool start { get; set; }
        public int num { get; set; }

        public Simulation() {
            this.start = start;
            this.num = num;
        }

        public void startSimulation(bool start, int num) {

            if(start == true && num > 0) {

                Model.MaitreHotel maitrehotel = new Model.MaitreHotel(1);

                for(int i = 1; i <= num; i++) {

                    Console.WriteLine("---- || Start Simulation || Generation " + i);
                    maitrehotel.checkBooking();
                    Console.WriteLine(" ");
                }
            }
            else {
                Console.WriteLine("---- || Stop Simulation");
            }
        }
        
    }
}
