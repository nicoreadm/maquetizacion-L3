using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Delgado
{
    public partial class _Default : Page
    {
        List<string> productos2= new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            ItemsSeleccionados.Text = " ";
            
            if (!Page.IsPostBack) //sirve para que no se superponga los eventos-pedidos-requests
            {
                string[] productos = new string[] { "cepillo", "shampoo", "Acondicionador" }; //Creo un array con los elementos para cargar en la listbox1
                ListBox1.DataSource = productos; //vinculo el array de productos a la listbox mediante datasource
                ListBox1.DataBind();  //realizo la union de la fuente 
            }
        }

        protected void BtnIncluir_Click(object sender, EventArgs e)
        {
                if (ListBox1.SelectedIndex >= 0) //para que no sea vacio y no de error
            {
                ListBox2.Items.Add(ListBox1.SelectedItem);

            }
        }

        protected void BtnRemover_Click(object sender, EventArgs e)
        {

            if (ListBox2.SelectedIndex >= 0)
            {
           
                ListBox2.Items.RemoveAt(ListBox2.SelectedIndex);
            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Panel1.Visible = true;
            this.Panel2.Visible = true;
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void AgregarItem_Click(object sender, EventArgs e)
        {
            string nombre = TextBox1.Text;
            if (nombre.Length > 0)
            {
                ListBox2.Items.Add(nombre);
                productos2.Add(nombre);
            }
        }

        protected void BtnVIsualizar_Click(object sender, EventArgs e)
        {
            foreach (var item in ListBox2.Items)
            {
                productos2.Add(item.ToString());
            }
            string listacomocadena = string.Join(", ", productos2);
            ItemsSeleccionados.Text = listacomocadena;
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            ListBox2.Items.Clear();
        }
    }
}