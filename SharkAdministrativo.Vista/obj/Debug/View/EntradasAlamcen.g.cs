﻿#pragma checksum "..\..\..\View\EntradasAlamcen.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "93589C25EFA18C39690045223FF55D83"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.34014
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using DevExpress.Core;
using DevExpress.Xpf.Bars;
using DevExpress.Xpf.Core;
using DevExpress.Xpf.Core.ConditionalFormatting;
using DevExpress.Xpf.Core.DataSources;
using DevExpress.Xpf.Core.Serialization;
using DevExpress.Xpf.Core.ServerMode;
using DevExpress.Xpf.DXBinding;
using DevExpress.Xpf.Editors;
using DevExpress.Xpf.Editors.DataPager;
using DevExpress.Xpf.Editors.DateNavigator;
using DevExpress.Xpf.Editors.ExpressionEditor;
using DevExpress.Xpf.Editors.Filtering;
using DevExpress.Xpf.Editors.Flyout;
using DevExpress.Xpf.Editors.Popups;
using DevExpress.Xpf.Editors.Popups.Calendar;
using DevExpress.Xpf.Editors.RangeControl;
using DevExpress.Xpf.Editors.Settings;
using DevExpress.Xpf.Editors.Settings.Extension;
using DevExpress.Xpf.Editors.Validation;
using DevExpress.Xpf.LayoutControl;
using DevExpress.Xpf.LayoutControl.Serialization;
using DevExpress.Xpf.Ribbon;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SharkAdministrativo.Vista.View {
    
    
    /// <summary>
    /// EntradasAlamcen
    /// </summary>
    public partial class EntradasAlamcen : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 26 "..\..\..\View\EntradasAlamcen.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock Title;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\View\EntradasAlamcen.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Editors.ComboBoxEdit cbxPresentaciones;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\View\EntradasAlamcen.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Editors.TextEdit txtCantidad;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\View\EntradasAlamcen.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Editors.ComboBoxEdit cbxAlmacenes;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SharkAdministrativo.Vista;component/view/entradasalamcen.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\EntradasAlamcen.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 12 "..\..\..\View\EntradasAlamcen.xaml"
            ((DevExpress.Xpf.Bars.BarButtonItem)(target)).ItemClick += new DevExpress.Xpf.Bars.ItemClickEventHandler(this.BarButtonItem_ItemClick);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 15 "..\..\..\View\EntradasAlamcen.xaml"
            ((DevExpress.Xpf.Bars.BarButtonItem)(target)).ItemClick += new DevExpress.Xpf.Bars.ItemClickEventHandler(this.btnSave_ItemClick);
            
            #line default
            #line hidden
            return;
            case 3:
            
            #line 16 "..\..\..\View\EntradasAlamcen.xaml"
            ((DevExpress.Xpf.Bars.BarButtonItem)(target)).ItemClick += new DevExpress.Xpf.Bars.ItemClickEventHandler(this.btnNuevo);
            
            #line default
            #line hidden
            return;
            case 4:
            
            #line 19 "..\..\..\View\EntradasAlamcen.xaml"
            ((DevExpress.Xpf.Bars.BarButtonItem)(target)).ItemClick += new DevExpress.Xpf.Bars.ItemClickEventHandler(this.btnInputsReport_ItemClick);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Title = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.cbxPresentaciones = ((DevExpress.Xpf.Editors.ComboBoxEdit)(target));
            return;
            case 7:
            this.txtCantidad = ((DevExpress.Xpf.Editors.TextEdit)(target));
            return;
            case 8:
            this.cbxAlmacenes = ((DevExpress.Xpf.Editors.ComboBoxEdit)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

