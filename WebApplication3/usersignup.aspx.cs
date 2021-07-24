using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;

namespace WebApplication3
{

    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                string Password = TextBox9.Text;
                TextBox9.Attributes.Add("value", Password);
            }
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            //string folderPath = Server.MapPath("~/ProfilePictures/");
            //if (!Directory.Exists(folderPath))
            //{
            //Directory.CreateDirectory(folderPath);
            //}
            //FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            //Image1.ImageUrl = Path.GetFileName(FileUpload1.FileName);
        }

        // sign up button click event & Validation
        protected void Button1_Click(object sender, EventArgs e)
        {   
            //Validations//
            string message = "";
            Boolean isValid = true;

            string fullName = TextBox1.Text.Trim();
            Boolean isFullNameValid = fullName.Length > 0;
            if(!isFullNameValid)
            {
                isValid = false;
                message += "Please enter full name. ";
            }

            string dob = TextBox2.Text.Trim();
            Boolean isDOBValid = dob.Length > 0;
            if (!isDOBValid)
            {
                isValid = false;
                message += "Please enter DOB. ";
            }


            string contactNumber = TextBox3.Text.Trim();
            Boolean isContactNumberValid = contactNumber.Length == 10;
            if (!isContactNumberValid)
            {
                isValid = false;
                message += "Please enter 10 digit mobile number. ";
            }

            string email = TextBox4.Text.Trim();
            Boolean isEmailValid = email.Length > 0;
            if (!isEmailValid)
            {
                isValid = false;
                message += "Please enter email ID. ";
            }

            string state = DropDownList1.SelectedItem.Value;
            Boolean isStateValid = state != "select";
            if (!isStateValid)
            {
                isValid = false;
                message += "Please select state. ";
            }

            string city = TextBox6.Text.Trim();
            Boolean isCityValid = city.Length > 0;
            if (!isCityValid)
            {
                isValid = false;
                message += "Please enter city. ";
            }

            string pincode = TextBox7.Text.Trim();
            Boolean isPincodeValid = pincode.Length > 0;
            if (!isPincodeValid)
            {
                isValid = false;
                message += "Please enter pincode. ";
            }

            string address = TextBox5.Text.Trim();
            Boolean isAddressValid = address.Length > 0;
            if (!isAddressValid)
            {
                isValid = false;
                message += "Please enter address. ";
            }

            // password validations
            string password = TextBox9.Text.Trim();
            Boolean isPasswordValid = password.Length > 0;
            if (!isPasswordValid)
            {
                isValid = false;
                message += "Please enter password. ";
            }
            var regExp = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$");
            Boolean isPasswordStrong = regExp.IsMatch(password);
            if (isPasswordValid && !isPasswordStrong)
            {
                isValid = false;
                message += "Password should contain at least 1 number, one uppercase letter, 8 characters long and one special char";
            }
            //Validations Complete//
            if (!isValid)
            {
                Response.Write("<script>alert('" + message + "');</script>");
            } else
            {
                signUpNewMember();
            }
        }



        void setImage()
        {
            Response.Write("<script>alert('Testing');</script>");
        }



        void signUpNewMember()
        {
            if (IsPostBack && FileUpload1.PostedFile != null)
            {
                if (FileUpload1.PostedFile.FileName.Length > 0)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/ProfilePictures/") + FileUpload1.PostedFile.FileName);
                    Image1.ImageUrl = "~/ProfilePictures/" + FileUpload1.PostedFile.FileName;
                }
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string filepath = "~/ProfilePictures/generaluser.png";
                if(FileUpload1.PostedFile.FileName != "")
                {
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("ProfilePictures/" + filename));
                    filepath = "~/ProfilePictures/" + filename;
                }
                
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_table(full_name,dob,contact_no,email,state,city,pincode,full_address,password,account_status,book_img_link) output INSERTED.member_id values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@password,@account_status,@book_img_link)", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.Parameters.AddWithValue("@book_img_link", filepath);
                int modified =(int)cmd.ExecuteScalar();
                con.Close();
                string message = "Sign Up Successful. Go to User Login to Login. Your Member ID is "+ modified;
                Response.Write("<script>alert('" + message + "');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        protected void CheckBox1_CheckedChanged(object sender, EventArgs e) {
            if (CheckBox1.Checked)
            {
                TextBox9.TextMode = TextBoxMode.SingleLine;
            }
            else {
                TextBox9.TextMode = TextBoxMode.Password;
            }
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "scrollDown", "setTimeout(function () { window.scrollTo(0,document.body.scrollHeight); }, 25);", true);
        }



    }
}