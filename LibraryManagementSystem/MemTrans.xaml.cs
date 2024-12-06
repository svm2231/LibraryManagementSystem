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
    /// Interaction logic for MemTrans.xaml
    /// </summary>
    public partial class MemTrans : Window
    {
        public MemTrans()
        {
            InitializeComponent();
        }

        private void CheckMemTrans(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtMemberID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query = "SELECT * FROM SHIV2_TRANSACTION WHERE MEMBERID=:p_memID";

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
                                UserTransDataGrid.ItemsSource = dataTable.DefaultView;
                                UserTransDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("No Transaction found for this member.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                UserTransDataGrid.Visibility = Visibility.Collapsed;
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
            Transaction reportWindow = new();
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
