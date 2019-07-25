<%@ Page Title="" Language="C#" MasterPageFile="~/Management/backend.master" AutoEventWireup="true" CodeFile="write.aspx.cs" Inherits="Management_posts_write" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainManagementContrent" Runat="Server">
    <div class="postadded">
    <h2>Add New Blog Post</h2>
        <br />
    <div>
        <label>Title:</label><br />
        <asp:TextBox ID="txbxTitle" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a title" ControlToValidate="txbxTitle" Text="* Please Enter a Post Title" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
        <br />
        <label>Category:</label><br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName" CssClass="form-control"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' SelectCommand="SELECT [CategoryName] FROM [Categories]"></asp:SqlDataSource>
        <br />
        <br />
    </div>
        
        <label>Featured Image:</label><br />
        <asp:FileUpload ID="FeaturedImageUpload" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FeaturedImageUpload" ErrorMessage="* Please upload an image" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
        <br />
        <br />

   <div>
        <label>Author:</label><br />
        <asp:Label ID="df" runat="server" />
        <asp:TextBox ID="txbxAuthor" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
    </div>

    <div>
        <label>Content:</label><br />
        <asp:TextBox ID="txbxContent" runat="server" TextMode="MultiLine" CssClass="editblog"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter content" ControlToValidate="txbxTitle" Text="* Please enter content" CssClass="ErrorMessage"></asp:RequiredFieldValidator>

        <br />
    </div>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="error" runat="server" Text=""></asp:Label>
</div>
</asp:Content>

