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
    /// Interaction logic for DeleteBook.xaml
    /// </summary>
    public partial class DeleteBook : Window
    {
        public DeleteBook()
        {
            InitializeComponent();
        }
        private void CheckBookDetails(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtBookID.Text))
            {
                MessageBox.Show("Please enter a Book ID.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query = "SELECT title,firstname ||' '|| lastname as author FROM shiv2_books b JOIN shiv2_authors a USING(authorid) WHERE bookid=:p_bookid";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":p_bookid", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);

                        // Execute the query and read the results
                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Set the Full Name and Membership End Date in the text boxes
                                txtTitle.Text = reader["title"].ToString();
                                txtAuthor.Text = reader["author"].ToString();
                            }
                            else
                            {
                                MessageBox.Show("Book not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void DeleteBooks(object sender, RoutedEventArgs e)
        {
            string query = "DELETE SHIV2_BOOKs WHERE bookid=:p_bookid";
            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        
                        command.Parameters.Add(":p_bookID", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);

                        command.ExecuteNonQuery();
                        MessageBox.Show("Book Deleted successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);


                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }

        private void Back_Click(object sender, EventArgs e)
        {
            ManageBooks manageUser = new();
            manageUser.Show();
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
