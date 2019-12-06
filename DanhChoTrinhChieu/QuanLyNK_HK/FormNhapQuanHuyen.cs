using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuanLyNK_HK
{
    public partial class FormNhapQuanHuyen : Form
    {
        private SqlConnection connect = new SqlConnection(ConnectionString.connectionString);
        private SqlDataAdapter adapter;
        private DataTable bangDuLieu = new DataTable();
        private SqlCommandBuilder capNhat;
        private int idNew;

        public void ketNoiCSDL()
        {
            connect.Open();
        }
        
        public void NgatKetNoiCSDL()
        {
            connect.Close();
        }

        public void capNhatIdNew()
        {
            idNew = dgvDuLieu.RowCount;
            txbMaQH.Text = idNew.ToString();
        }
        public void layDuLieu()
        {
            ketNoiCSDL();

            String query = "select * from QUANHUYEN";
            adapter = new SqlDataAdapter(query, connect);
            adapter.Fill(bangDuLieu);
            dgvDuLieu.DataSource = bangDuLieu;
            capNhatIdNew();
            NgatKetNoiCSDL();
        }

        public FormNhapQuanHuyen()
        {
            InitializeComponent();
            layDuLieu();
        }

        private void btnLamRong_Click(object sender, EventArgs e)
        {
            txbTenQH.Text = "";
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            DataRow dongmoi = bangDuLieu.NewRow();
            dongmoi["MAQUANHUYEN"] = txbMaQH.Text;
            dongmoi["TENQUANHUYEN"] = txbTenQH.Text;

                bangDuLieu.Rows.Add(dongmoi);
            //cap nhat
            capNhat=new SqlCommandBuilder(adapter);
            adapter.Update(bangDuLieu);
        }

        private void dgvDuLieu_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
