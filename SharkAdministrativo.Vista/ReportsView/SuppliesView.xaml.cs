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

namespace SharkAdministrativo.Vista.ReportsView
{
    /// <summary>
    /// Lógica de interacción para SuppliesView.xaml
    /// </summary>
    public partial class SuppliesView : Window
    {
        public SuppliesView()
        {
            InitializeComponent();
            loadReport();
        }

        /// <summary>
        /// Carga el reporte de insumos.
        /// </summary>
        public void loadReport()
        {
            DataReports.SuppliesData report = new DataReports.SuppliesData();
            suppliesReport.DocumentSource = report;
            report.CreateDocument();
        }
    }
}
