<%@ Page Title="" Language="C#" MasterPageFile="~/courses/courses.master" AutoEventWireup="true" CodeFile="cc.aspx.cs" Inherits="Management_posts_details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="false" Width="100%" GridLines="None">
            <Fields>
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <div class="article" style='background-image:url("../Media/<%#Eval("FeaturedImage")%>")'>
                        <div class="container">
                        <div class="row">
                        <div class="col-sm-6">
                             <h1><%# Eval("CourseTitle") %></h1>
                             <p class="catblogs">Next Erollment: <strong>September <asp:Label ID="YearLabel" runat="server" Text="<%# DateTime.Now.Year.ToString() %>"></asp:Label></strong></p>
                             <a class="btn btn-danger" target="_blank" href="<%# Eval("ApplyLink") %>">
                            <i class="fa fa-pencil fa-lg"></i> Apply Now</a>
                        </div>
                        <div class="col-sm-6 courserating">
                            <p>Average Course Rating:</p>
                            <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i>
                        </div>
                        </div>
                        </div>
                            </div>

                        <div class="panel aftc">
                            <div class="container">
                            <div class="panel-heading">
                            <div class="row">
                                <div class="col-sm-10">
                                <h3>Register to this Course</h3>
                                <p>Are you already enrolled on this course? If so please register it here, you will then be able to leave a review of your experiences on this course.</p>
                            </div>
                            <div class="col-sm-2">
                                <a class="btn btn-default btn-lg" style="margin-top:30px;" href="#">
                                <i class="fa fa-envelope-o fa-lg"></i> &nbsp;&nbsp;Register</a>
                            </div>
                            </div>
                            </div>
                            </div>
                        </div>

                            <div class="container">
    <div class="row">
        <div class="col-sm-9">
            <%# Eval("CoruseContent") %>
        </div>
        <div class="col-sm-3 panel aftc sidebarcourse">
            <h2>Course Specifics</h2>
            <strong>Awarding body:</strong>
            <p><%# Eval("CourseAwardingBody") %></p>
            <br />
            <strong>Level:</strong>
            <p><%# Eval("CourseAwardingBody") %></p>
            <br />
            <strong>Attendance:</strong>
            <p><%# Eval("Attendance") %></p>
            <br />
            <strong>Duration:</strong>
            <p><%# Eval("Duration") %></p>
            <br />
            <strong>Availability:</strong>
            <p>Full-time and Part-time</p>
            <br />
            <strong>Higher education course fee:</strong>
            <p><%# Eval("CoruseFee") %></p>
            <br />
            <strong>Funding:</strong>
            <p><%# Eval("CoruseFunding") %></p>
            <br />
            <strong>Higher education bursary:</strong>
            <p>FT courses only</p>
            <br />
            <a href='<%#Eval("ApplyLink")%>' target="_blank" class="btn btn-block btn-primary btn-lg">Apply Now</a>
            <br />
        </div>
        </div>
    </div>

                     </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
        <asp:Label ID="Label4" CssClass="hidden" runat="server" Text="Label"></asp:Label>
        <hr />
               <% if (Label4.Text == "true") { %>
               <div class="reviews">
                   <div class="container">
                <h4>Leave a Review</h4>
                <p>You are registerd as taken / taking this course, please leave us a review to let us know how we are doing. Your review may be used on this website or in College itself.</p>
                <br />
                <br />
                <label>Review</label>
                <label>Course Rating:</label><br />
                  <asp:DropDownList ID="courseRatingR" class="form-control" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a rating" ControlToValidate="courseRatingR" Text="* Please Enter a value" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    <br />

                <asp:TextBox ID="reviewText" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please enter " ControlToValidate="reviewText" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
              </div>
            </div>
            <% } else { %>
            <% } %>
        <br />
    <div class="container">
        <asp:GridView ID="GridViewcomment" runat="server" AutoGenerateColumns="false" ShowHeader="false" GridLines="None" Width="100%" CellSpacing="10">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="col-sm-offset-2">
                            <br />
                            <div class="row">
                                <div class="col-sm-3">
                                    <img src="../getImage.aspx" class="img-circle pull-left ppcricle " style="margin-right:15px;" alt="avatar profile image" width="60px" height="60px;" />
                                    <asp:Label ID="Label1" CssClass="fullNamet" runat="server" Text='<%#Eval("Name") %>' Font-Bold="true" Font-Size="Large"></asp:Label><br />
                                    <asp:Label ID="LabelCommentDate" runat="server" Text='<%# Eval("Date") %>' Font-Size="Smaller"></asp:Label>
                                </div>
                                <div class="col-sm-7">
                                    <p><asp:Label ID="Label2" runat="server" Text='<%#Eval("Review") %>'></asp:Label></p>
                                    <b>Course Rating: <asp:Label ID="Label3" runat="server" Text='<%# Eval("Rating") %>' Font-Size="Smaller"></asp:Label> Stars</b>
                                </div>
                            </div>
                            <br />
                            
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="LabelNoComment" runat="server" Text="No Reviews yet." Visible="false"></asp:Label>
    </div>
   
    <br />

</asp:Content>

