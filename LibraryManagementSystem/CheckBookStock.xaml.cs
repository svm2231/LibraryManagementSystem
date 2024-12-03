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
using System.Windows.Media.TextFormatting;
using System.Windows.Shapes;
using Oracle.ManagedDataAccess.Client;
using System.Xml.Linq;
using System.Data;


namespace LibraryManagementSystem
{
    /// <summary>
    /// Interaction logic for CheckBookStock.xaml
    /// </summary>
    public partial class CheckBookStock : Window
    {
        public CheckBookStock()
        {
            InitializeComponent();


            string query = "SELECT bookID,title,authorid,isbn,publishedyear,Genre,CopiesAvailable FROM shiv2_books WHERE copiesavailable=0";


            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        

                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            OracleDataAdapter adapter = new OracleDataAdapter(command);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            if (dataTable.Rows.Count > 0)
                            {
                                OutOfStockBooksDataGrid.ItemsSource = dataTable.DefaultView;
                                OutOfStockBooksDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("No books found for this member.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
                                OutOfStockBooksDataGrid.Visibility = Visibility.Collapsed;
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
            ReportWindow reportWindow = new ReportWindow();
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
