using System.Windows;

namespace LibraryManagementSystem
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            TestDatabaseConnection();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordBox.Password;

            // Simple authentication (can be replaced with a real database check)
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
        }

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
    }
}
