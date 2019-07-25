<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="Management_posts_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <br />
    <div class="container">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="false" Width="100%" GridLines="None">
            <Fields>
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <tr>
                            <div>
                                <h2>
                                    <asp:Label ID="lblBlogPostTitle" runat="server" Text='<%#Eval("Title") %>'></asp:Label></h2>
                                <div>
                                    <span>
                                        <asp:Label ID="lblAuthor" runat="server" Text='<%#Eval("Author") %>'></asp:Label></span>
                                    <span>
                                        <asp:Label ID="lblBlogDate" runat="server" Text='<%#Eval("BlogDate") %>'></asp:Label></span><br />

                                    <strong>In Category:</strong>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Category") %>'></asp:Label></span>
                                </div>
                                <div style="text-align: justify;">
                                    <p>
                                        <asp:Label ID="lblMessage" runat="server" Text='<%#Eval("Content") %>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </tr>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </div>
    <div class="container">
        <hr />
        <label>Comments:</label>

        <br />
        <asp:GridView ID="GridViewcomment" runat="server" AutoGenerateColumns="false" ShowHeader="false" GridLines="None" Width="100%" CellSpacing="10">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>

                        <div>
                            <asp:Label ID="lblauthor" runat="server" Text='<%#Eval("Name") %>' Font-Bold="true" Font-Italic="true" Font-Size="Large"></asp:Label>
                            <asp:Label ID="LabelCommentDate" runat="server" Text='<%# Eval("Date") %>' Font-Size="Smaller"></asp:Label>
                        </div>
                        <div>
                            <p>
                                <asp:Label ID="Lblcomment" runat="server" Text='<%#Eval("Comment") %>'></asp:Label>
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="LabelNoComment" runat="server" Text="No comments yet." Visible="false"></asp:Label>
    </div>

    <asp:LoginView ID="LoginView4" runat="server">
        <LoggedInTemplate>
            <div id="comment_form" class="container">
                <h3>Post a comment</h3>
                <br />
                <label>Comment</label>
                <asp:TextBox ID="txbxcomment" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please enter " ControlToValidate="txbxcomment" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>
        </LoggedInTemplate>
        <AnonymousTemplate>
            <div class="container">
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                to add a comment
            </div>
        </AnonymousTemplate>
    </asp:LoginView>
    <br />

</asp:Content>

