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
    /// Interaction logic for TrackBook.xaml
    /// </summary>
    public partial class TrackBook : Window
    {
        public TrackBook()
        {
            InitializeComponent();
        }
        private void TrackBooksDetails(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtBookID.Text))
            {
                MessageBox.Show("Please enter a Details.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }


            string query = "SELECT memberid, firstname ||' '|| lastname as Name, TO_CHAR(duedate,'YYYY-MM-DD') AS due_date FROM shiv2_borrow br JOIN shiv2_members m USING (memberid) WHERE bookid=:p_bookID";


            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":p_bookID", OracleDbType.Varchar2).Value = int.Parse(txtBookID.Text);


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
                                MessageBox.Show("Book Not Borrowed.", "Not Found", MessageBoxButton.OK, MessageBoxImage.Information);
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
