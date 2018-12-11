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
    public partial class IGraphique : Form
    {
        public IGraphique()
        {
            InitializeComponent();
            timer1.Start();
        }

        private void IGraphique_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox14_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox11_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox35_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox48_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox51_Click(object sender, EventArgs e)
        {

        }

        private void NewClients_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox57_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox25_Click(object sender, EventArgs e)
        {

        }


        int min = 0;
        int hour = 10;
        private void timer1_Tick_1(object sender, EventArgs e)
        {
            
            min++;
            label1.Text = "" + hour + " " + ":" + " " + min;
            if (min >= 59)
            {
                hour++;
                min = 0;
                label1.Text = "" + hour + "" + ":" + "" + min;
            }
            else if (hour == 24)
            {
                timer1.Stop();
            }
           
            timer1.Interval = 1000;
                       
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            timer1.Stop();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void InitializeComponent()
        {
            this.SuspendLayout();
            // 
            // IGraphique
            // 
            this.ClientSize = new System.Drawing.Size(729, 474);
            this.Name = "IGraphique";
            this.Load += new System.EventHandler(this.IGraphique_Load_1);
            this.ResumeLayout(false);

        }

        private void IGraphique_Load_1(object sender, EventArgs e)
        {

        }
    }
}
