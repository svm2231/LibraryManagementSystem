﻿using System;
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
using Oracle.ManagedDataAccess.Client;

namespace LibraryManagementSystem
{
    /// <summary>
    /// Interaction logic for updateStockWindow.xaml
    /// </summary>
    public partial class updateStockWindow : Window
    {
        public updateStockWindow()
        {
            InitializeComponent();
        }

        private void CheckStock(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtBookID.Text))
            {
                MessageBox.Show("Please enter a Book ID.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            string query = "SELECT title,copiesavailable FROM shiv2_books WHERE bookid=:p_bookID";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        // Add the Member ID parameter to the query
                        command.Parameters.Add(":p_bookID", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);

                        // Execute the query and read the results
                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Set the Full Name and Membership End Date in the text boxes
                                txtTitle.Text = reader["title"].ToString();
                                txtStock.Text = reader["copiesavailable"].ToString();
                            }
                            else
                            {
                                MessageBox.Show("Book not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void UpdateStock(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txtAddStock.Text))
            {
                MessageBox.Show("Please enter a Book ID.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            string query = "UPDATE shiv2_books SET copiesavailable=copiesavailable+:p_quantity WHERE bookid=:p_bookID";

            try
            {
                using (OracleConnection connection = DatabaseHelper.GetConnection())
                {
                    connection.Open();
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        command.Parameters.Add(":p_quantity", OracleDbType.Int32).Value = int.Parse(txtAddStock.Text);
                        command.Parameters.Add(":p_bookID", OracleDbType.Int32).Value = int.Parse(txtBookID.Text);

                        command.ExecuteNonQuery();
                        MessageBox.Show("Stock Updated successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);


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
            ManageBooks reportWindow = new();
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
