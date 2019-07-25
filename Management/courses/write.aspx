<%@ Page Title="" Language="C#" MasterPageFile="~/Management/backend.master" AutoEventWireup="true" CodeFile="write.aspx.cs" Inherits="Management_course_write" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainManagementContrent" runat="Server">
    <div class="postadded">
        <h2>Add New Course</h2>
        <br />
        <div class="row">

            <div class="col-sm-9">
                <label>Course Title:</label><br />
                <asp:TextBox ID="courseTitle" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a title" ControlToValidate="courseTitle" Text="* Please Enter a Course Title" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                <br />
                <label>Featured Image:</label><br />
                <asp:FileUpload ID="FeaturedImageUpload" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FeaturedImageUpload" ErrorMessage="* Please upload an image" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                <br />
                <label>Department:</label><br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Department" DataValueField="Department" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' SelectCommand="SELECT [Department] FROM [Departments]"></asp:SqlDataSource>
                <br />
                <label>Course Description:</label><br />
                <asp:TextBox ID="courseContent" runat="server" TextMode="MultiLine" CssClass="editblog"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter content" ControlToValidate="courseContent" Text="* Please enter content" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="error" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-sm-3">
                <div class="cmeta">
                    <label>Course Rating:</label><br />
                    <asp:DropDownList ID="courseRating" class="form-control" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a rating" ControlToValidate="courseRating" Text="* Please Enter a value" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Awarding Body:</label><br />
                    <asp:TextBox ID="courseAwardingBody" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseAwardingBody" Text="* Please Enter a body" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Level:</label><br />
                    <asp:TextBox ID="courseLevel" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseLevel" Text="* Please Enter a level" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Attendance:</label><br />
                    <asp:TextBox ID="courseAttendance" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseAttendance" Text="* Please Enter a attendance" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Duration:</label><br />
                    <asp:TextBox ID="courseDuration" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseDuration" Text="* Please Enter a duration" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Fee:</label><br />
                    <asp:TextBox ID="courseFee" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseFee" Text="* Please Enter a fee" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Funding:</label><br />
                    <asp:TextBox ID="courseFunding" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseFunding" Text="* Please Enter a funding" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                    <label>Apply Link:</label><br />
                    <asp:TextBox ID="courseApplyLink" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter a level" ControlToValidate="courseApplyLink" Text="* Please Enter a link" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />
                </div>
            </div>

        </div>

        <br />
    </div>
</asp:Content>

