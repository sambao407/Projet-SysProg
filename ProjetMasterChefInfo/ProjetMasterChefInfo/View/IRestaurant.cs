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
        int sec = 0;
        int min = 0;
        int hour = 10;

        private void timer1_Tick(object sender, EventArgs e)
        {

            sec++;
            Timer.Text = "" + hour + " " + ":" + " " + min;
            if (sec >= 59)
            {
                min++;
                sec = 0;
                Timer.Text = "" + hour + "" + ":" + "" + min;
            }
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
        }

        private void pictureBox53_Click(object sender, EventArgs e)
        {
            timer1.Start();
            timer1.Interval = 1000;
        }

        private void pictureBox52_Click(object sender, EventArgs e)
        {
            timer1.Stop();
        }

        private void IRestaurant_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox49_Click(object sender, EventArgs e)
        {
            
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
         
        }

        private void pictureBox46_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox58_Click(object sender, EventArgs e)
        {
            timer1.Start();
            timer1.Interval = 10;
        }

        private void pictureBox59_Click(object sender, EventArgs e)
        {
            timer1.Stop();
            sec = 0;
            min = 0;
            hour = 10;
        }
    }
}
