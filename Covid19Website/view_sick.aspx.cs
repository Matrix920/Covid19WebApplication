using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid19Website
{
    public partial class view_sick : System.Web.UI.Page
    {
        SickEntities db = new SickEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var sicks = db.Sicks.ToList().Select(sick => new MySick(sick)).ToList();


                GridView1.DataSource = sicks;
                GridView1.DataBind();
            }
        }

        private class MySick
        {
            public MySick(Sick s)
            {
                FirstName = s.FirstName;
                LastName = s.LastName;
                MiddleName = s.MiddleName;
                Number = s.Number;
                SickDate = s.SickDate;
                Tel = s.Tel;
                NationalityName = s.Nationality.NationalityName;
            }
            public String FirstName { set; get; }
            public String MiddleName { set; get; }
            public String LastName { set; get; }
            public int Number { set; get; }

            public DateTime SickDate { set; get; }
            public String Tel { set; get; }

            public String NationalityName { set; get; }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            String s = TxtSearch.Text.Trim().ToLower();

            var sicks = db.Sicks.Where(x => x.FirstName.Contains(s) || x.MiddleName.Contains(s) || x.LastName.Contains(s)).ToList().Select(sick=>new MySick(sick)).ToList();

            GridView1.DataSource = sicks;
            GridView1.DataBind();
        }
    }
}