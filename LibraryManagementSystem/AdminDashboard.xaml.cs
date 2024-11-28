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
    /// Interaction logic for AdminDashboard.xaml
    /// </summary>
    public partial class AdminDashboard : Window
    {
        public AdminDashboard()
        {
            InitializeComponent();
        }

        private void ManageBooks_Click(object sender, RoutedEventArgs e)
        {
            // Here you would open a new window for managing books (e.g., BooksManagementWindow)
            ManageBooks manageBook=new ManageBooks();
            manageBook.Show();
            this.Close();
            
        }

        // Handle Manage Users Click
        private void ManageUsers_Click(object sender, RoutedEventArgs e)
        {
            // Here you would open a new window for managing users (e.g., UsersManagementWindow)
            MessageBox.Show("Managing Users...");
        }

        // Handle Manage Transactions Click
        private void ManageTransactions_Click(object sender, RoutedEventArgs e)
        {
            // Here you would open a new window for managing transactions (e.g., TransactionsManagementWindow)
            MessageBox.Show("Managing Transactions...");
        }

        // Handle Logout Click
        private void Logout_Click(object sender, RoutedEventArgs e)
        {
            // Close the admin dashboard and open the login window again
            MainWindow loginWindow = new MainWindow();
            loginWindow.Show();
            this.Close();
        }
    }
}
