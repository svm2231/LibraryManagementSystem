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
using Oracle.ManagedDataAccess.Client;

namespace LibraryManagementSystem
{
    /// <summary>
    /// Interaction logic for IssueBookWindow.xaml
    /// </summary>
    public partial class IssueBookWindow : Window
    {
        public IssueBookWindow()
        {
            InitializeComponent();
        }

        public void IssueBook_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtBookID.Text) || string.IsNullOrEmpty(txtMemberID.Text))
            {
                MessageBox.Show("Please fill all the fields.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query = "BEGIN  insertBorrow(:p_memberID,:p_bookID);  END;";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();


                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        command.Parameters.Add("p_bookID", OracleDbType.Varchar2).Value = int.Parse(txtBookID.Text);
                        command.Parameters.Add("p_memberID", OracleDbType.Varchar2).Value = int.Parse(txtMemberID.Text);

                        OracleDataAdapter adapter = new OracleDataAdapter(command);

                        command.ExecuteNonQuery();

                        MessageBox.Show("Book Issued successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                }


            }

            catch (OracleException ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch (FormatException)
            {
                MessageBox.Show("Please enter valid numeric values for Author ID, Publication Year, and Stock Quantity.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An unexpected error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void Back_Click(object sender, EventArgs e)
        {
            ManageBooks manageBooks = new ManageBooks();  
            manageBooks.Show();
            this.Close();
        }
        private void Menu_Click(object sender, EventArgs e)
        {
            AdminDashboard adminDashboard = new AdminDashboard();
            adminDashboard.Show();
            this.Close();
        }
    }
}
