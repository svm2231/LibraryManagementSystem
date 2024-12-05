using System;
using System.Collections;
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
    /// Interaction logic for MemDetails.xaml
    /// </summary>
    public partial class MemDetails : Window
    {
        public MemDetails()
        {
            InitializeComponent();
        }

        private void CheckSubmitDetails(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtMemberID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            string query1 = "SELECT memberID, firstname || ' ' || lastname as name, phonenumber FROM SHIV2_MEMBERS WHERE memberID=:p_memID";

            string query2 = "SELECT bookID, title, borrowdate,duedate, fine from shiv2_borrow JOIN shiv2_books USING(bookid) WHERE memberID=:p_memID";

            string query3 = "SELECT NVL(SUM(FINE),0) AS totalFine from shiv2_borrow where memberID=:p_memID";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query3, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":p_memID", OracleDbType.Varchar2).Value = int.Parse(txtMemberID.Text);


                        using (OracleDataReader reader = command.ExecuteReader())
                        {


                            if (reader.Read())
                            {
                                // Set the Full Name and Membership End Date in the text boxes
                                txtFine.Text = reader["totalFine"].ToString();
                            }
                            else
                            {
                                MessageBox.Show("Member not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query1, connection))
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
                                MemDataGrid.ItemsSource = dataTable.DefaultView;
                                MemDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("User Not found.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                MemDataGrid.Visibility = Visibility.Collapsed;
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query2, connection))
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
                                DetailsDataGrid.ItemsSource = dataTable.DefaultView;
                                DetailsDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("User had not Borrowed any Book.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                DetailsDataGrid.Visibility = Visibility.Collapsed;
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
        private void Back_Click(object sender, RoutedEventArgs e)
        {
            ManageUser reportWindow = new();
            reportWindow.Show();
            this.Close();
        }
        private void Menu_Click(object sender, RoutedEventArgs e)
        {
            AdminDashboard adminDashboard = new AdminDashboard();
            adminDashboard.Show();
            this.Close();

        }
        private void payFine(object sender, RoutedEventArgs e)
        {
            string query = "DELETE SHIV2_BORROW WHERE memberID=:p_memID and fine>0";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Calculate the new expiry date (adding one year to the current date)


                        // Add parameters for the new expiry date and member ID
                        command.Parameters.Add(":p_memID", OracleDbType.Int32).Value = int.Parse(txtMemberID.Text);
                 
                        // Execute the update command
                        command.ExecuteNonQuery();
                        MessageBox.Show("Fine submited successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

    }
}
