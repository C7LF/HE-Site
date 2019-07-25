<%@ Page Title="" Language="C#" MasterPageFile="~/Management/backend.master" AutoEventWireup="true" CodeFile="allposts.aspx.cs" Inherits="Management_allposts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainManagementContrent" Runat="Server">
    <br />
    <div class="row">

            <span class="behead">All Posts &nbsp;&nbsp; </span> 

            <a href="posts/write.aspx" class="btn btn-default">Add New</a>

    </div>
    <br />
    <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author"></asp:BoundField>
            <asp:BoundField DataField="BlogDate" HeaderText="BlogDate" SortExpression="BlogDate"></asp:BoundField>
            <asp:CommandField DeleteText="Delete" HeaderText="Actions" ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' DeleteCommand="DELETE FROM [BlogPost] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BlogPost] ([Title], [Content], [Author], [BlogDate], [Category]) VALUES (@Title, @Content, @Author, @BlogDate, @Category)" SelectCommand="SELECT * FROM [BlogPost]" UpdateCommand="UPDATE [BlogPost] SET [Title] = @Title, [Content] = @Content, [Author] = @Author, [BlogDate] = @BlogDate, [Category] = @Category WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

