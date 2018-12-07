using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjetMasterChefInfo.Model
{
    class PlatConcret
    {
        public int ID { get; set; }
        public bool statePlat { get; set; }
        public int timePrepare { get; set; }
        public string composant { get; set; }
    }
}
