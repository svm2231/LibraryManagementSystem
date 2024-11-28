using Oracle.ManagedDataAccess.Client;
using System;
using System.Windows;

namespace LibraryManagementSystem
{
    public partial class RenewMem : Window
    {
        public RenewMem()
        {
            InitializeComponent();
        }

        // Button click handler to fetch member details
        private void CheckMemberDetails(object sender, RoutedEventArgs e)
        {
            // Validate input: Check if the Member ID is entered
            if (string.IsNullOrEmpty(txtMemberID.Text))
            {
                MessageBox.Show("Please enter a Member ID.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Query to fetch member details: Full Name and Membership End Date
            string query = "SELECT FIRSTNAME || ' ' || LASTNAME AS FullName, To_char(EXPIRYDATE,'YYYY-MM-DD') as EXPIRYDATE FROM SHIV2_MEMBERS WHERE MEMBERID = :V_MEMBERID";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":V_MEMBERID", OracleDbType.Int32).Value = int.Parse(txtMemberID.Text);

                        // Execute the query and read the results
                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Set the Full Name and Membership End Date in the text boxes
                                txtFullName.Text = reader["FullName"].ToString();
                                txtMembershipEnd.Text = reader["EXPIRYDATE"].ToString();
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
        }

        // Button click handler to renew membership
        private void RenewMembership(object sender, RoutedEventArgs e)
        {
            // Validate input: Check if the Member ID is entered
            if (string.IsNullOrEmpty(txtMemberID.Text))
            {
                MessageBox.Show("Please enter a Member ID to renew.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Query to update the membership expiry date
            string updateQuery = "BEGIN membership_renewal(:V_MEMBERID); END;";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(updateQuery, connection))
                    {
                        // Calculate the new expiry date (adding one year to the current date)
             

                        // Add parameters for the new expiry date and member ID
                        command.Parameters.Add(":V_MEMBERID", OracleDbType.Int32).Value = int.Parse(txtMemberID.Text);

                        // Execute the update command
                        command.ExecuteNonQuery();
                        MessageBox.Show("Membership Renewed successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);

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
