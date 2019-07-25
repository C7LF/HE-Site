<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">

    <div class="toptitle">
      <div class="container">
        <h1>My Profile</h1>
      </div>
  </div>
  <div class="container">
      <br />
      <br />

      <div class="col-sm-3 avatarsection">
          <div class="details-banner">
               <h4>Avatar</h4>
              </div>
          <img src="getImage.aspx" width="100%" alt="profile image" />
          <asp:FileUpLoad id="FileUpLoad1" runat="server" accept=".png,.jpg,.jpeg,.gif" />
          <br />
          <asp:Button id="UploadBtn" Text="Upload" CssClass="btn btn-default pull-right" OnClick="UploadBtn_Click" runat="server" Width="105px" />
          <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
          <br />
          <br />
          <div class="details-banner">
               <h4>Useful Links</h4>
           </div>
          <div class="blockdetail row">
              <div class="col-sm-12">
                  <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/Default.aspx" />
                </div>
            </div>
          <div class="blockdetail row">
              <div class="col-sm-12">
                  <asp:HyperLink ID="passrest" runat="server" NavigateUrl="~/password-reset.aspx" >Reset Password</asp:HyperLink>
                </div>
            </div>
           <div class="blockdetail row">
              <div class="col-sm-12">
                  <a href="support.aspx">Need Help?</a>
                </div>
            </div>

      </div>

      <div class="col-sm-9">
          <div class="details-banner">
              <div class="row">
              <div class="col-sm-6">
               <h3>Contact Information</h3>
                  </div>
                  <div class="col-sm-6 text-right">
               <div class="edit">
                   <div style="margin-top:15px;">
                   <asp:Button ID="SaveButton" CssClass="saveChanges" runat="server" Text="Save" OnClick="SaveButton_Click" />
                    </div>
               </div>
               <div class="noedit">
                  <a style="margin-top:15px;" class="btn btn-default" id="editdetails"><i class="fa fa-pencil fa-lg"></i> &nbsp;&nbsp;<b>Edit</b></a>
              </div>
              </div>
              </div>
              </div>
              <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>First Name:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="noedit">
                      <div class="col-sm-12">
                        <asp:Label ID="DisplayFirstName" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-6">
                        <asp:TextBox ID="FirstName" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-sm-6">
                        <asp:RequiredFieldValidator ControlToValidate="FirstName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your First Name"></asp:RequiredFieldValidator>
                      </div>
                  </div>
              </div>
            </div>

             <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Last Name:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="noedit">
                      <div class="col-sm-12">
                        <asp:Label ID="DisplayLastName" runat="server" Text=""></asp:Label>
                      </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-6">
                        <asp:TextBox ID="LastName" runat="server" CssClass="form-control"></asp:TextBox>
                      </div>
                      <div class="col-sm-6">
                        <asp:RequiredFieldValidator ControlToValidate="LastName" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Last Name"></asp:RequiredFieldValidator>
                      </div>
                  </div>
              </div>
            </div>

            <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Date of Birth:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="noedit">
                      <div class="col-sm-12">
                        <asp:Label ID="DisplayDateOfBirth" runat="server" Text="" ></asp:Label>
                      </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-6">
                        <asp:TextBox ID="DateOfBirth" CssClass="DoB form-control" runat="server"></asp:TextBox>
                    </div>
                      <div class="col-sm-6">
                        <asp:RequiredFieldValidator ControlToValidate="DateOfBirth" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter your Date of Birth"></asp:RequiredFieldValidator>
                      </div>
                  </div>
              </div>
            </div>

          <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Bio:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="noedit">
                      <div class="col-sm-12">
                         <asp:Label ID="DisplayBio" runat="server" Text=""></asp:Label>
                         
                      </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-12">
                      <asp:TextBox ID="Bio" runat="server" Height="150" TextMode="multiline" CssClass="form-control"></asp:TextBox>
                      </div>
                  </div>
              </div>
            </div>

              <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Email Address:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="noedit">
                      <div class="col-sm-12">
                        <asp:Label ID="DisplayEmailAddress" runat="server" Text=""></asp:Label>
                      </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-6">
                        <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
                      </div>
                  </div>
              </div>
            </div>

          <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Phone Number:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="noedit">
                      <div class="col-sm-12">
                    <asp:Label ID="DisplayPhoneNumber" runat="server" Text=""></asp:Label>
                        </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-6">
                      <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                      </div>
                  </div>
              </div>
            </div>

          <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>College Email Address (if applicable):</strong></p>
               </div>
              <div class="col-sm-6">
              <div class="noedit">
                    <div class="col-sm-12">
                    <asp:Label ID="DisplayCollegeEmail" runat="server" Text=""></asp:Label>
                    </div>
                  </div>
                  <div class="edit">
                      <div class="col-sm-6">
                      <asp:TextBox ID="CollegeEmail" runat="server"></asp:TextBox>
                      </div>
                  </div>
               </div>
              </div>
          <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>College Account Verfified:</strong></p>
               </div>
              <div class="col-sm-6">
                  <div class="col-sm-12">
                  <p>Yes</p>
                </div>
              </div>
            </div>


          <br />
          <br />
          <div class="details-banner">
              <div class="row">
              <div class="col-sm-6">
               <h3>Subscribed Category</h3>
                  </div>
                  <div class="col-sm-6 text-right">
                 <div class="edit2">
                   <div style="margin-top:15px;">
                   <asp:Button ID="SaveCats" CssClass="saveChanges2" runat="server" Text="Save" OnClick="SaveButtonCats_Click" />
                    </div>
               </div>
               <div class="noedit2">
                  <a style="margin-top:15px;" class="btn btn-default" id="editdetails2"><i class="fa fa-pencil fa-lg"></i> &nbsp;&nbsp;<b>Edit</b></a>
                </div>
                    
              </div>
            </div>
          </div>
          <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Category:</strong></p>
                   
               </div>
              <div class="col-sm-6">
                    <div class="edit2">
                  <asp:RadioButtonList ID="Checkcats" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName"></asp:RadioButtonList>
                   <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' SelectCommand="SELECT [CategoryName] FROM [Categories]"></asp:SqlDataSource>
                   </div>
                    <div class="noedit2">
                   <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                   </div>
              </div>
              
            </div>
          <br />
          <br />
         
          <div class="details-banner">
              <div class="row">
              <div class="col-sm-6">
               <h3>Course Preference</h3>
                  </div>
                  <div class="col-sm-6 text-right">
                 <div class="edit3">
                   <div style="margin-top:15px;">
                   <asp:Button ID="Button1" CssClass="saveChanges3" runat="server" Text="Save" OnClick="SaveButtoncourse_Click" />
                    </div>
               </div>
               <div class="noedit3">
                  <a style="margin-top:15px;" class="btn btn-default" id="editdetails3"><i class="fa fa-pencil fa-lg"></i> &nbsp;&nbsp;<b>Edit</b></a>
                </div>
                    
              </div>
            </div>
          </div>
          <div class="row blockdetail">
               <div class="col-sm-6">
                   <p><strong>Category:</strong></p>
                   
               </div>
              <div class="col-sm-6">
                    <div class="edit3">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="CourseTitle" DataValueField="CourseTitle"></asp:RadioButtonList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' SelectCommand="SELECT [CourseTitle] FROM [Courses]"></asp:SqlDataSource>
                    </div>
                    <div class="noedit3">
                   <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                   </div>
              </div>
              
            </div>
          <br />
          <br />

          </div>
      </div>
    <br />
    <br />
</asp:Content>

