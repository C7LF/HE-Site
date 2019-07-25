<%@ Page Title="Higher Education Computing CC" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" EnableEventValidation="false" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="banner">
      <div class="container">
          <div class="guestinfo col-sm-3">
              <asp:LoginView ID="LoginView1" runat="server">
              <AnonymousTemplate>
              <div class="guestinfoheader">
                  <h2>Hello, <strong>Guest</strong></h2>
              </div>
               
            <br />
            <a href="Login.aspx" class="btn btn-primary btn-block"><i class="fa fa-user"></i> Login<i class="fa fa-chevron-right fa-pull-right" style="margin-top:3px;"></i></a>
            <a href="register.aspx" class="btn btn-primary btn-block"><i class="fa fa-book"></i> Register<i class="fa fa-chevron-right fa-pull-right" style="margin-top:3px;"></i></a>
            </AnonymousTemplate>
            <LoggedInTemplate>
              <div class="guestinfoheader">
                  <h2>Hello, <strong><asp:LoginName ID="LoginName1" runat="server" /></strong></h2>
              </div>
               
            <br />
            <a href="profile.aspx" class="btn btn-primary btn-block"><i class="fa fa-user"></i> My Profile<i class="fa fa-chevron-right fa-pull-right" style="margin-top:3px;"></i></a>
            <a href="courses/fdsc-software.aspx" class="btn btn-primary btn-block"><i class="fa fa-book"></i> My Course<i class="fa fa-chevron-right fa-pull-right" style="margin-top:3px;"></i></a>
            </LoggedInTemplate>
            </asp:LoginView>
         </div>
      </div>
  </div>
    <div class="backshape"></div>
    <div class="backshape2"></div>
    <div class="newsection">
        <div class="container">
            <h1>Recent News <span class="small"><a href="news-feed.aspx">View More <i class="fa fa-angle-right"></i></a></span></h1>
            <br />


<asp:DataList ID="GridView1" RepeatDirection="Horizontal" RepeatLayout="Table" runat="server" AutoGenerateColumns="false" RepeatColumns="4" cellpadding="10" cellspacing="10" width="100%" ShowHeader="false" GridLines="None">
<ItemTemplate>
 
    <div class="collegenews">
<div class="BlogHead">
<h2><a href='<%# Eval("Id", "details.aspx?Id={0}") %>' class="BlogHead">
<asp:Label ID="Label1" runat="server" Text='<%#Eval("Title") %>'></asp:Label></a></h2>
    
</div>
<div class="post_meta">
    <span class="date blackLink nocursor"><b>In Category: </b><asp:Label ID="Label3" runat="server" Text='<%#Eval("Category") %>'></asp:Label></span><br />
    <span class="post_author blackLink nocursor small">By: <asp:Label ID="Label2" runat="server" Text='<%#Eval("Author") %>'></asp:Label>,</span><br />
    <span class="date blackLink nocursor small">On: <asp:Label ID="Label11" runat="server" Text='<%#Eval("BlogDate") %>'></asp:Label></span><br />
</div>
</div>
</ItemTemplate>
</asp:DataList>


            <!-- <div class="row">
                <div class="col-sm-3">
                    <div class="yournews">
                        <a href="news/Article1.aspx">
                        <img src="https://placeimg.com/640/480/tech" width="100%" />
                        <h3>News Article 1</h3>
                        </a>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="collegenews btext">
                                <a href="news/Article2.aspx">
                                <img src="https://placeimg.com/640/480/arch" width="100%" />
                                <h3>News Article 2</h3>
                                </a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="collegenews btext">
                                <a href="news/Article2.aspx">
                                <img src="https://placeimg.com/640/480/nature" width="100%" />
                                <h3>News Article 3</h3>
                                </a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="collegenews btext">
                                <a href="news/Article3.aspx">
                                <img src="https://placeimg.com/640/480/people" width="100%" />
                                <h3>News Article 4</h3>
                                </a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>

    <div id="search">  
        <div class="container">
        <div class="ui-widget">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Search our Courses...</h2>
                    <p>Praesent eleifend neque in consequat elementum. <br />Arcu sed tincidunt convallis, elit lwigula interdum metus</p>
                     <asp:TextBox ID="tags" runat="server" CssClass="cleansearch"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CausesValidation="False" />
                </div>
                <div class="col-sm-6 testimonials">
                    <div class="col-sm-1">
                        
                   <i class="fa fa-quote-left fa-3x" aria-hidden="true"></i><br /><br />
                        </div>
                    <div class="col-sm-10">
                    <em>Fusce tincidunt orci et turpis sollicitudin, in dignissim purus porttitor. Cras commodo, lorem non facilisis blandit, ex nunc iaculis eros, et bibendum magna elit sit amet lacus. Proin interdum, libero eu viverra auctor, est ante scelerisque metus, sit amet tincidunt ex sapien at massa.</em>
                                        <br />
                    <div class="nametest">
                    <strong>- Name Here</strong>
                        </div>
                    </div>
                        <br />
                    <div class="col-sm-1">
                       <i class="fa fa-quote-right pull-right fa-3x" aria-hidden="true"></i>
                     </div>
                </div>
            </div>
        </div>
        </div>
     </div>
</asp:Content>

