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
    /// Interaction logic for Top_Month.xaml
    /// </summary>
    public partial class Top_Month : Window
    {
        public Top_Month()
        {
            InitializeComponent();
            string query = "SELECT BOOKID,TITLE, COUNT(*) AS COUNT FROM shiv2_borrow br JOIN shiv2_books b USING(bookid) WHERE BORROWDATE>ADD_MONTHS(SYSDATE,-12) GROUP BY BOOKID, TITLE HAVING COUNT(*)>2 ORDER BY COUNT(*) DESC";

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
                                BooksDataGrid.ItemsSource = dataTable.DefaultView;
                                BooksDataGrid.Visibility = Visibility.Visible;
                            }
                            else
                            {
                                MessageBox.Show("Book Not found.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
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
