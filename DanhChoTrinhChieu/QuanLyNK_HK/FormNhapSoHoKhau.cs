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
    public partial class FormNhapSoHoKhau : Form
    {
        public FormNhapSoHoKhau()
        {
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnLamRong_Click(object sender, EventArgs e)
        {
            txbHoTenChuHo.Text = txbSoNha.Text = txbTenDuongPho.Text = txbKhuPhoAp.Text = "";
        }
    }
}
