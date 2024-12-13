using System.Windows;
using Oracle.ManagedDataAccess.Client;

namespace LibraryManagementSystem
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordBox.Password;

            // Simple authentication (can be replaced with a real database check)
            /*
              if (username == "admin" && password == "password")  // Replace with actual logic
            {
                // Proceed to the next window or dashboard (e.g., Admin Dashboard)
                AdminDashboard dashboard = new AdminDashboard();
                dashboard.Show();
                this.Close(); // Close the login window after successful login
            }
            else
            {
                // Display error message for invalid login
                MessageBox.Show("Invalid credentials", "Login Failed", MessageBoxButton.OK, MessageBoxImage.Error);
            }
             */

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                MessageBox.Show("Please enter both username and password.", "Input Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            string connectionString = "User Id=" + username + ";Password=" + password + ";Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=192.168.5.5)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=MESL)))";

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT 1 FROM DUAL"; // Test query to verify the connection
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        object result = command.ExecuteScalar();
                        if (result != null)
                        {
                            MessageBox.Show("Login successful!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                            // Navigate to the main application window
                            AdminDashboard mainWindow = new(connection);
                            mainWindow.Show();
                            this.Close();
                        }
                        else
                        {
                            MessageBox.Show("Login failed. Invalid credentials.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                }
            }
            catch (OracleException ex)
            {
                MessageBox.Show("Database error: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("An unexpected error occurred: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        /*
        private void TestDatabaseConnection()
        {
            try
            {
                using (var connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    MessageBox.Show("Database connection successful!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Database connection failed: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        */
    }
}
