using Oracle.ManagedDataAccess.Client;
using System;
using System.Windows;

namespace LibraryManagementSystem
{
    /// <summary>
    /// Interaction logic for SubmitBookWindow.xaml
    /// </summary>
    public partial class SubmitBookWindow : Window
    {
        public SubmitBookWindow()
        {
            InitializeComponent();

            string query = "BEGIN update_fine; END;";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Calculate the new expiry date (adding one year to the current date)


                        // Add parameters for the new expiry date and member ID
                        

                        // Execute the update command
                        command.ExecuteNonQuery();
                        

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
        public void submitBook(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtMemberID.Text) || string.IsNullOrEmpty(txtBookID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query = "UPDATE shiv2_borrow SET returnDate=SYSDATE WHERE memberID=:p_memID AND bookID=:p_bookID";

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
                        command.Parameters.Add(":p_bookID", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);
                        // Execute the update command
                        command.ExecuteNonQuery();
                        MessageBox.Show("Book submited successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);

                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void CheckSubmitDetails(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtMemberID.Text) || string.IsNullOrEmpty(txtBookID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query ="SELECT memberID,bookID,dueDate,NVL(fine,0) as fine,firstname ||' ' || lastname as name FROM shiv2_borrow JOIN shiv2_members m USING(memberID) WHERE memberID=:p_memID AND bookID=:p_bookID AND returnDate IS NULL";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":p_memID", OracleDbType.Int32).Value = int.Parse(txtMemberID.Text);
                        command.Parameters.Add(":p_bookID", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);


                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                          

                                // Set the Full Name and Membership End Date in the text boxes
                                txtMemberID1.Text = reader["memberID"].ToString();
                                txtBookID1.Text = reader["bookID"].ToString();
                                txtName.Text = reader["name"].ToString();
                                txtDueDate.Text = Convert.ToDateTime(reader["dueDate"]).ToShortDateString();
                                txtFine.Text = reader["fine"].ToString();
                                if (txtFine.Text == null)
                                {
                                    txtFine.Text = "0";
                                }
                                DetailsGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("Member not found.", "Error",       MessageBoxButton.OK, MessageBoxImage.Error);
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
        private void submitFine(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtMemberID.Text) || string.IsNullOrEmpty(txtBookID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query = "DELETE shiv2_borrow WHERE memberID=:p_memID AND bookID=:p_bookID";

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
                        command.Parameters.Add(":p_bookID", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);
                        // Execute the update command
                        command.ExecuteNonQuery();
                        MessageBox.Show("Book and Fine submited successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);

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
