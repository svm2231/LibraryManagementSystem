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
    /// Interaction logic for Tod_Trans.xaml
    /// </summary>
    public partial class Tod_Trans : Window
    {
        public Tod_Trans()
        {
            InitializeComponent();

            string query = "SELECT * FROM SHIV2_TRANSACTION WHERE TO_DATE(TRANSACTIONDATE,'YYYY-MM-DD')= TO_DATE(SYSDATE,'YYYY-MM-DD') ORDER BY TRANSACTIONDATE";



            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {


                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            OracleDataAdapter adapter = new OracleDataAdapter(command);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            if (dataTable.Rows.Count > 0)
                            {
                                TodTransDataGrid.ItemsSource = dataTable.DefaultView;
                                TodTransDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("User Not found.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                TodTransDataGrid.Visibility = Visibility.Collapsed;
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
