using System;
using System.Collections.Generic;
using System.Data;
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
    /// Interaction logic for Remove_mem.xaml
    /// </summary>
    public partial class Remove_mem : Window
    {
        public Remove_mem()
        {
            InitializeComponent();
        }

        private void CheckBooksDetails(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtMemberID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            string query = "SELECT bookid, title, to_char(duedate,'YYYY-MM-DD') AS DUEDATE,fine FROM shiv2_borrow b JOIN shiv2_books bk USING(bookid) WHERE memberid=:p_memID";


            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":p_memID", OracleDbType.Varchar2).Value = int.Parse(txtMemberID.Text);


                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            OracleDataAdapter adapter = new OracleDataAdapter(command);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            if (dataTable.Rows.Count > 0)
                            {
                                BooksDataGrid.ItemsSource = dataTable.DefaultView;
                                BooksDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("No books found for this member.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                BooksDataGrid.Visibility = Visibility.Collapsed;
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void RemoveMemb(object sender, RoutedEventArgs e)
        {
            string query = "DELETE SHIV2_MEMBERS WHERE MEMBERID=:P_MEMID";
            try
            {
                using(OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();

                    using(OracleCommand command = new OracleCommand(query, connection))
                    {
                        command.Parameters.Add(":p_memID", OracleDbType.Int32).Value = int.Parse(txtMemberID.Text);
                        command.ExecuteNonQuery();
                        MessageBox.Show("Member Deleted successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void Back_Click(object sender, RoutedEventArgs e)
        {
            ManageUser reportWindow = new ();
            reportWindow.Show();
            this.Close();
        }
        private void Menu_Click(object sender, RoutedEventArgs e)
        {
            AdminDashboard adminDashboard = new AdminDashboard();
            adminDashboard.Show();
            this.Close();

        }
    }
}
