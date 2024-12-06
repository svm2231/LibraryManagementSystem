using Oracle.ManagedDataAccess.Client;
using System;
using System.Windows;

namespace LibraryManagementSystem
{
    public partial class AddBookWindow : Window
    {
        public AddBookWindow()
        {
            InitializeComponent();
        }

        // Method to handle Add Book button click
        private void AddBook_Click(object sender, RoutedEventArgs e)
        {
            // Validate input
            if (string.IsNullOrEmpty(txtBookTitle.Text) || string.IsNullOrEmpty(txtAuthor.Text) ||
                string.IsNullOrEmpty(txtISBN.Text) || string.IsNullOrEmpty(txtPublicationYear.Text) || string.IsNullOrEmpty(txtStockQuantity.Text) || string.IsNullOrEmpty(txtGenre.Text))
            {
                MessageBox.Show("Please fill all the fields.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Create the insert query
            string query = "BEGIN insert_book(:p_title, :p_authorid, :p_isbn, :p_published_year,:p_Genre, :p_copiesavailable); END;";



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
                        command.Parameters.Add("p_title", OracleDbType.Varchar2).Value = txtBookTitle.Text;
                        command.Parameters.Add("p_authorid", OracleDbType.Int32).Value = int.Parse(txtAuthor.Text);
                        command.Parameters.Add("p_isbn", OracleDbType.Varchar2).Value = txtISBN.Text;
                        command.Parameters.Add("p_publishedyear", OracleDbType.Int32).Value = int.Parse(txtPublicationYear.Text);
                        command.Parameters.Add("p_genre", OracleDbType.Varchar2).Value = txtGenre.Text.ToString();
                        command.Parameters.Add("p_copiesavailable", OracleDbType.Int32).Value = int.Parse(txtStockQuantity.Text);

                        // Execute the query
                        command.ExecuteNonQuery();

                        MessageBox.Show("Book added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                        ClearFields();

                    }
                }
            }
          
            catch (Exception ex)
            {
                MessageBox.Show($"An unexpected error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        // Clear input fields after successful book addition
        private void ClearFields()
        {
            txtBookTitle.Clear();
            txtAuthor.Clear();
            txtISBN.Clear();
            txtPublicationYear.Clear();
            txtStockQuantity.Clear();
            txtGenre.Clear();
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
        
    }
}
