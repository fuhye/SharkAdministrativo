//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SharkAdministrativo.Modelo
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    
    public partial class Salida_almacen
    {
        public int id { get; set; }
        public int insumo_id { get; set; }
        public Nullable<double> cantidad { get; set; }
        public int tipo_movimiento_id { get; set; }
        public int almacen_salida { get; set; }
        public string descripcion { get; set; }
        public virtual Insumo Insumo { get; set; }
        public virtual Tipo_movimiento Tipo_movimiento { get; set; }
        public virtual Almacen Almacen { get; set; }

        public void registrar(Salida_almacen salida) {
            using (bdsharkEntities db = new bdsharkEntities())
            {
                db.Configuration.LazyLoadingEnabled = true;
                db.Tipo_movimientos.Attach(salida.Tipo_movimiento);
                db.Insumos.Attach(salida.Insumo);
                db.Almacenes.Attach(salida.Almacen);
                db.Salidas_almacen.Add(salida);
                db.SaveChanges();
            }        
        
        }
    }
}
