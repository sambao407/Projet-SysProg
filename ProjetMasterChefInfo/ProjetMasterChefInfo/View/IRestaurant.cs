using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjetMasterChefInfo.View
{
    public partial class IRestaurant : Form
    {
        public IRestaurant()
        {
            InitializeComponent();
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox26_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox33_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        int min = 0;
        int hour = 10;

        private void timer1_Tick(object sender, EventArgs e)
        {

            min++;
            Timer.Text = "" + hour + " " + ":" + " " + min;
            if (min >= 59)
            {
                hour++;
                min = 0;
                Timer.Text = "" + hour + "" + ":" + "" + min;
            }
            else if (hour == 24)
            {
                timer1.Stop();
            }

            timer1.Interval = 1000;
        }

        private void pictureBox53_Click(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void pictureBox52_Click(object sender, EventArgs e)
        {
            timer1.Stop();
        }
    }
}
