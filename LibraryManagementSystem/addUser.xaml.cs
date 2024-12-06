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
    /// Interaction logic for addUser.xaml
    /// </summary>
    public partial class addUser : Window
    {
        public addUser()
        {
            InitializeComponent();
        }

        private void AddMem_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtFname.Text) || string.IsNullOrEmpty(txtLname.Text) ||
                string.IsNullOrEmpty(txtAddress.Text) || string.IsNullOrEmpty(txtContact.Text) || string.IsNullOrEmpty(txtEmail.Text))
            {
                MessageBox.Show("Please fill all the fields.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            string query = "BEGIN insertMem1(:p_fname,:p_lname,:p_add,:p_cont,:p_email); END;";

            try
            {
                // Establish a connection to the Oracle database
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    // Open the connection
                    connection.Open();

                    // Create a command and bind parameters to avoid SQL injection
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        command.Parameters.Add("p_fname", OracleDbType.Varchar2).Value = txtFname.Text;
                        command.Parameters.Add("p_lname", OracleDbType.Varchar2).Value = txtLname.Text;
                        command.Parameters.Add("p_add", OracleDbType.Varchar2).Value = txtAddress.Text;
                        command.Parameters.Add("p_cont", OracleDbType.Varchar2).Value = txtContact.Text;
                        command.Parameters.Add("p_email", OracleDbType.Varchar2).Value = txtEmail.Text;

                        // Execute the query
                        command.ExecuteNonQuery();

                        MessageBox.Show("Member added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                        ClearFields();

                    }
                }
            }
            
            catch (Exception ex)
            {
                MessageBox.Show($"An unexpected error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void ClearFields()
        {
            txtFname.Clear();
            txtLname.Clear();
            txtAddress.Clear();
            txtContact.Clear();
            txtEmail.Clear();
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

    }
}
