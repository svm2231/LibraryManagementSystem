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

namespace LibraryManagementSystem
{
    /// <summary>
    /// Interaction logic for ManageUser.xaml
    /// </summary>
    public partial class ManageUser : Window
    {
        public ManageUser()
        {
            InitializeComponent();
        }

        public void AddMem_Click(object sender, RoutedEventArgs e)
        {

        }
        public void RemoveMem_Click(object sender, RoutedEventArgs e)
        {

        }
        public void RenewMem_Click(object sender,RoutedEventArgs e)
        {
            RenewMem renewMem = new RenewMem();
            renewMem.Show();
            this.Close();
        }
        public void IssueCheck_Click(object Sender,RoutedEventArgs e)
        {

        }
    }
}