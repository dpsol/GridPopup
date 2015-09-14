using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GridPopup
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        protected void BindGridView()
        {
            DataTable dt = new DataTable();
            dt = LlenaDatos();
            gvDatos.DataSource = dt;
            gvDatos.DataBind();
        }

        private DataTable LlenaDatos()
        {
            DataTable dt = new DataTable();
            DataColumn dcUserID = new DataColumn("UserId");
            DataColumn dcNombre = new DataColumn("Nombre");
            DataColumn dcPaterno = new DataColumn("Paterno");
            DataColumn dcMaterno = new DataColumn("Materno");

            dt.Columns.Add(dcUserID);
            dt.Columns.Add(dcNombre);
            dt.Columns.Add(dcPaterno);
            dt.Columns.Add(dcMaterno);

            DataRow dr = dt.NewRow();
            dr[dcUserID] = "1";
            dr[dcNombre] = string.IsNullOrEmpty(txtNombre.Text) ? "Andrea" : txtNombre.Text;
            dr[dcPaterno] = string.IsNullOrEmpty(txtPaterno.Text) ? "Espinosa" : txtPaterno.Text;
            dr[dcMaterno] = string.IsNullOrEmpty(txtMaterno.Text) ? "Robles" : txtMaterno.Text;

            dt.Rows.Add(dr);

            return dt;
        }
        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Button btnDetalles = sender as Button;
            GridViewRow gvrow = (GridViewRow)btnDetalles.NamingContainer;
            lblID.Text = gvDatos.DataKeys[gvrow.RowIndex].Value.ToString();
            txtNombre.Text = gvrow.Cells[1].Text;
            txtPaterno.Text = gvrow.Cells[2].Text;
            txtMaterno.Text = gvrow.Cells[3].Text;
            this.ModalPopupExtender1.Show();
        }
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            BindGridView();
        }
    }
}