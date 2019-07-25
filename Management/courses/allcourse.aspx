<%@ Page Title="" Language="C#" MasterPageFile="~/Management/backend.master" AutoEventWireup="true" CodeFile="allcourse.aspx.cs" Inherits="Management_allcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainManagementContrent" Runat="Server">
    <br />
    <div class="row">

            <span class="behead">All Courses &nbsp;&nbsp; </span> 

            <a href="write.aspx" class="btn btn-default">Add New</a>

    </div>
    <br />
    <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="CourseTitle" HeaderText="Title" SortExpression="Title"></asp:BoundField>
            <asp:BoundField DataField="CourseLevel" HeaderText="Level" SortExpression="Level"></asp:BoundField>
            <asp:CommandField DeleteText="Delete" HeaderText="Actions" ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ccheConnectionString %>' DeleteCommand="DELETE FROM [Courses] WHERE [Id] = @Id"  SelectCommand="SELECT * FROM [Courses]" >
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

