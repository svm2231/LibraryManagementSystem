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

namespace LibraryManagementSystem
{
    public partial class ManageBooks : Window
    {
        public ManageBooks()
        {
            InitializeComponent();
        }

        // Open Add Book Window
        private void AddBook_Click(object sender, RoutedEventArgs e)
        {
            AddBookWindow addBookWindow = new AddBookWindow();
            addBookWindow.Show();
        }

        // Open Update Book Window
        private void UpdateBook_Click(object sender, RoutedEventArgs e)
        {
            UpdateBookWindow updateBookWindow = new UpdateBookWindow();
            updateBookWindow.Show();
        }

        // Open Delete Book Window
        private void DeleteBook_Click(object sender, RoutedEventArgs e)
        {
            DeleteBook deleteBookWindow = new DeleteBook();
            deleteBookWindow.Show();
        }

        // Open Update Book Stock Window
        private void UpdateStock_Click(object sender, RoutedEventArgs e)
        {
            updateStockWindow updateStockWindow = new updateStockWindow();
            updateStockWindow.Show();
        }

        // Open Generate Report Window
        private void GenerateReport_Click(object sender, RoutedEventArgs e)
        {
            ReportWindow reportWindow = new ReportWindow();
            reportWindow.Show();
        }

        // Open Issue Book Window
        private void IssueBook_Click(object sender, RoutedEventArgs e)
        {
            IssueBookWindow issueBookWindow = new IssueBookWindow();
            issueBookWindow.Show();
        }

        // Open Submit Book Window
        private void SubmitBook_Click(object sender, RoutedEventArgs e)
        {
            SubmitBookWindow submitBookWindow = new SubmitBookWindow();
            submitBookWindow.Show();
        }
    }
}