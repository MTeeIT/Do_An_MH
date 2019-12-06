using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNK_HK
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void phườngXãToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void phườngXãToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            FormNhapPhuongXa fr = new FormNhapPhuongXa();
            fr.Show();
            fr.StartPosition = FormStartPosition.CenterParent;
        }

        private void hộKhẩuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormNhapSoHoKhau fr = new FormNhapSoHoKhau();
            fr.Show();
            fr.StartPosition = FormStartPosition.CenterParent;
        }

        private void nhânKhẩuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormNhapNhanKhau fr = new FormNhapNhanKhau();
            fr.Show();
            fr.StartPosition = FormStartPosition.CenterParent;
        }

        private void quậnHuyệnToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            FormNhapQuanHuyen fr = new FormNhapQuanHuyen();
            fr.Show();
        }
    }
}
