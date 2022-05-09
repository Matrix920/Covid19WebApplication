using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Covid19Website;

namespace Covid19Website
{
    public partial class reg_sick : System.Web.UI.Page
    {
        SickEntities db = new SickEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var nationalities = db.Nationalities.ToList();

                foreach (Nationality n in nationalities)
                    DropDownNationalities.Items.Add(new ListItem(n.NationalityName + " (" + n.NationalityCode + ")", n.NationalityID.ToString()));
            }

        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var sick = new Sick
            {
                FirstName = TxtFirstName.Text,
                MiddleName = TxtMidName.Text,
                LastName = TxtLastName.Text,
                SickDate = DateTime.Parse(TxtSickDate.Text),
                Tel = TxtTel.Text,
                NationalityID=Int32.Parse(DropDownNationalities.SelectedValue),
                Number =Int32.Parse(TxtNumber.Text)
            };

            db.Sicks.Add(sick);
            db.SaveChanges();

            Response.Redirect("view_sick.aspx");
        }

    }
}