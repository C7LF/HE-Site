<%@ Page Title="Blog" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="Management_posts_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="toptitle">
      <div class="container">
        <h1>Blog</h1>
      </div>
  </div>
    <div class="container">
        <br />
        <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" class="gridview" ShowHeader="false" GridLines="None">
<Columns>
<asp:TemplateField ShowHeader="false">
<ItemTemplate>
    <div class="row">
        <div class="col-sm-3 bigf">
            <img src="/Media/<%#Eval("FeaturedImage") %>" width="100%" height="auto"/>
        </div>
        <div class="col-sm-9">
          <div class="BlogHead">
            <h2><a href='<%# Eval("Id", "details.aspx?Id={0}") %>' class="BlogHead">
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Title") %>'></asp:Label></a></h2>
         </div>
         <div class="post_meta">
            <span class="post_author blackLink nocursor">By: <asp:Label ID="Label2" runat="server" Text='<%#Eval("Author") %>'></asp:Label>,</span>
            <span class="date blackLink nocursor">On: <asp:Label ID="Label11" runat="server" Text='<%#Eval("BlogDate") %>'></asp:Label></span><br />
            <span class="date blackLink nocursor"><b>In Category: </b><asp:Label ID="Label3" runat="server" Text='<%#Eval("Category") %>'></asp:Label></span>
            <br />
            <div id="blbodythumb" style="text-align:justify;">
            <p><asp:Label ID="Label100" CssClass="mainbodex" runat="server" Text='<%#Eval("Content") %>' ></asp:Label></p></div>
        </div>
        </div>
    </div>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<EmptyDataTemplate>
No data
</EmptyDataTemplate>
</asp:GridView>
</div>
    <br />
</asp:Content>

