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
    /// Interaction logic for ReportWindow.xaml
    /// </summary>
    public partial class ReportWindow : Window
    {
        public ReportWindow()
        {
            InitializeComponent();
        }

        private void CheckStock(object sender, RoutedEventArgs e)
        {
            CheckBookStock checkBookStock = new CheckBookStock();
            checkBookStock.Show();
            this.Close();
        }
        private void TrackBook(object sender, RoutedEventArgs e)
        {
            TrackBook trackBook = new();
            trackBook.Show();
            this.Close();
        }
        private void TopMonth(object sender,RoutedEventArgs e)
        {
            Top_Month top_Month = new();
            top_Month.Show();
            this.Close();
        }

        private void newAddRep(object sender, RoutedEventArgs e)
        {
            RepNew repNew = new RepNew();   
            repNew.Show();
            this.Close();
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            ManageBooks manageBooks = new();
            manageBooks.Show();
            this.Close();
        }
        private void Menu_Click(object sender, RoutedEventArgs e)
        {
            AdminDashboard adminDashboard = new();
            adminDashboard.Show();
            this.Close();

        }
    }
}
