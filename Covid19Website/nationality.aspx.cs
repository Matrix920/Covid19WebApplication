using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19Website
{
    public partial class nationality : System.Web.UI.Page
    {
        SickEntities db = new SickEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var nationality = new Nationality
            {
                NationalityCode = TxtNationalityCode.Text,
                NationalityName = TxtNationalityName.Text
            };

            db.Nationalities.Add(nationality);
            db.SaveChanges();

            Response.Redirect("nationality.aspx");
        }
    }
}