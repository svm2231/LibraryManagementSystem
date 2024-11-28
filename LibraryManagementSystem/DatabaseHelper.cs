using Microsoft.Extensions.Configuration;
using Oracle.ManagedDataAccess.Client;
using System;
using System.IO;

namespace LibraryManagementSystem
{
    public static class DatabaseHelper
    {
        // Connection string variable
        private static string _connectionString;

        // Static constructor to load the connection string from appsettings.json
        static DatabaseHelper()
        {
            // Build configuration to read appsettings.json
            var configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory()) // Current directory
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true) // Load appsettings.json
                .Build();

            // Get the Oracle DB connection string from the configuration
            _connectionString = configuration.GetConnectionString("OracleDbConnection");
        }

        // Method to get a new Oracle database connection
        public static OracleConnection GetConnection()
        {
            return new OracleConnection(_connectionString);
        }
    }
}
