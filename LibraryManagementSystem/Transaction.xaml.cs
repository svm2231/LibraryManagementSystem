using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LibraryManagementSystem
{
    /// <summary>
    /// Interaction logic for Transaction.xaml
    /// </summary>
    public partial class Transaction : Window
    {
        public Transaction()
        {
            InitializeComponent();
        }
        private void Menu_Click(object sender, EventArgs e)
        {
            AdminDashboard adminDashboard = new AdminDashboard();
            adminDashboard.Show();
            this.Close();
        }
        private void Today_Click(object sender, EventArgs e)
        {
            Tod_Trans trans = new Tod_Trans();
            trans.Show();
            this.Close();
        }
        private void Week_Click(object sender, EventArgs e)
        {
            WeekTrans weekTrans = new WeekTrans();
            weekTrans.Show();
            this.Close();
        }
        private void Custom_Click(object sender, EventArgs e)
        {
            CustTrans custTrans = new();
            custTrans.Show();
            this.Close();
        }

        private void MemTrans_Click(object sender, EventArgs e)
        {
            MemTrans memTrans = new();
            memTrans.Show();
            this.Close();
        }
    }
}
