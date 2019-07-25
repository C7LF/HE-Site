<%@ Page Title="Courses" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="allcourses.aspx.cs" Inherits="Management_posts_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="toptitle">
      <div class="container">
        <h1>All Courses</h1>
      </div>
  </div>
    <div class="container">
        <br />
        <br />
<asp:Datalist ID="GridView1" runat="server" RepeatDirection="Horizontal" ItemStyle-Width="700" ItemStyle-VerticalAlign="top" CssClass="coursesindex" RepeatLayout="Table" runat="server" AutoGenerateColumns="false" RepeatColumns="4" cellpadding="10" cellspacing="10" width="100%" ShowHeader="false" GridLines="None">
<ItemTemplate>

            <div class="panel panel-default panel-front">
            <div class="panel-heading">
                <h4 class="panel-title"><img src="/Media/<%#Eval("FeaturedImage") %>" width="100%" height="auto"/></h4>
            </div>
            <div class="panel-body">
                <h2><a href='<%# Eval("Id", "/courses/cc.aspx?Id={0}") %>' class="BlogHead">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("CourseTitle") %>'></asp:Label></a></h2>
                <span class="date blackLink nocursor"><b>Department: </b><asp:Label ID="Label3" runat="server" Text='<%#Eval("Department") %>'></asp:Label></span>
                <br />
            </div>

            </div>


</ItemTemplate>
</asp:Datalist>
</div>
    <br />
</asp:Content>

