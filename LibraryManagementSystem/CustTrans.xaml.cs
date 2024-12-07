using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.AccessControl;
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
    /// Interaction logic for CustTrans.xaml
    /// </summary>
    public partial class CustTrans : Window
    {
        public CustTrans()
        {
            InitializeComponent();
        }

        /*
        private void SubmitDate(object sender, RoutedEventArgs e)
        {
            if (!datePicker.SelectedDate.HasValue)
            {
                
                MessageBox.Show("Select a date",
                                "blank data", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            DateTime selectedDate = datePicker.SelectedDate.Value;
            string oracleDate = selectedDate.ToString("yyyy-MM-dd");

            string query = "SELECT * FROM SHIV2_TRANSACTION WHERE TRANSACTIONDATE>:P_DATE-30 AND TRANSACTIONDATE<:P_DATE";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Step 4: Add parameter for the date
                        command.Parameters.Add(":p_memID", OracleDbType.Date).Value = oracleDate;
                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            OracleDataAdapter adapter = new OracleDataAdapter(command);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            if (dataTable.Rows.Count > 0)
                            {
                                CustTransDataGrid.ItemsSource = dataTable.DefaultView;
                                CustTransDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("User Not found.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                CustTransDataGrid.Visibility = Visibility.Collapsed;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error inserting date: {ex.Message}", "Database Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
        */

        private void SubmitDate(object sender, RoutedEventArgs e)
        {
            if (!datePicker.SelectedDate.HasValue)
            {
                MessageBox.Show("Select a date",
                                "Blank Data", MessageBoxButton.OK, MessageBoxImage.Error);
                return; // Exit the function if no date is selected
            }

            DateTime selectedDate = datePicker.SelectedDate.Value;

            // Oracle query with bind variables
            string query = "SELECT * FROM SHIV2_TRANSACTION WHERE TRANSACTIONDATE > :P_DATE_MINUS AND TRANSACTIONDATE < :P_DATE_MINUS+31 ORDER BY TRANSACTIONDATE";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();

                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add bind variables for :P_DATE_MINUS and :P_DATE_PLUS
                        command.Parameters.Add(":P_DATE_MINUS", OracleDbType.Date).Value = selectedDate;
                       

                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            OracleDataAdapter adapter = new OracleDataAdapter(command);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            if (dataTable.Rows.Count > 0)
                            {
                                CustTransDataGrid.ItemsSource = dataTable.DefaultView;
                                CustTransDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("No transactions found.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                CustTransDataGrid.Visibility = Visibility.Collapsed;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error querying data: {ex.Message}", "Database Error", MessageBoxButton.OK, MessageBoxImage.Error);
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
