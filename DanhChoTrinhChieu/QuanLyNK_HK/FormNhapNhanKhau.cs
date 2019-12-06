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
    public partial class FormNhapNhanKhau : Form
    {
        public FormNhapNhanKhau()
        {
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnLamRong_Click(object sender, EventArgs e)
        {
            //giữ số thứ tự
            chbNam.Checked = false;
            chbNu.Checked = false;
            txbHoTen.Text = "";
            dtNgaySinh.Text = "01/01/1900";
        }
    }
}
