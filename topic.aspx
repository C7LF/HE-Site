<%@ Page Title="Example Thread" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="topic.aspx.cs" Inherits="topic" %>

<%@ Register Src="~/Controls/Reply_Form.ascx" TagPrefix="Wrox" TagName="Reply_Form" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
      <div class="toptitle">
      <div class="container">
        <h1>Thread: Example Thread</h1>
      </div>
  </div>
  <div class="container">
        <br />
      <div class="row mainfo" style="padding:20px;">
            <section class="col-md-2">
              <img src="Images/avatar.png" width="50px" alt="avatar" />
                <br />
                <br />
              <b>John Smith</b><br />
              <small>Student</small> 
            </section>
            <section class="col-md-10">
                <b>Sub heading of discussion</b>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus finibus neque convallis pellentesque. Sed nibh sem, pulvinar non leo vel, feugiat volutpat dolor. Ut molestie erat vitae libero vulputate cursus. Morbi pulvinar justo faucibus lectus cursus, non efficitur tortor ornare. Phasellus non lectus vitae arcu convallis lacinia. </p>
                <p>Ut ac tincidunt tortor. In hac habitasse platea dictumst. In et laoreet arcu. Etiam at blandit nibh, ac imperdiet magna. Nulla finibus mauris quis vulputate ultricies. Morbi vitae dapibus justo.</p>
            </section>
          </div>
      <div class="row mainfo" style="padding:20px;">
            <section class="col-md-2">
              <img src="Images/avatar.png" width="50px" alt="avatar" />
                <br />
                <br />
              <b>John Smith</b><br />
              <small>Student</small> 
            </section>
            <section class="col-md-10">
                <p><b>in reply to:</b></p>
                <div class="replyquote">
                <b>Sub heading of discussion</b>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus finibus neque convallis pellentesque. Sed nibh sem, pulvinar non leo vel, feugiat volutpat dolor. Ut molestie erat vitae libero vulputate cursus. Morbi pulvinar justo faucibus lectus cursus, non efficitur tortor ornare. Phasellus non lectus vitae arcu convallis lacinia. </p>
                <p>Ut ac tincidunt tortor. In hac habitasse platea dictumst. In et laoreet arcu. Etiam at blandit nibh, ac imperdiet magna. Nulla finibus mauris quis vulputate ultricies. Morbi vitae dapibus justo.</p>
                </div>
                <br />
                <p>Integer urna enim, rutrum quis enim lobortis, eleifend cursus urna. Duis risus eros, convallis nec orci porttitor, tempor luctus nisi. Nullam euismod velit risus, rutrum interdum augue laoreet in. Nam aliquam interdum felis a sagittis. Nullam sit amet maximus metus. Integer vel est sit amet justo cursus pharetra at a purus.</p>
               </section>
          </div>
      <br />
      <div class="row">
          <section class="col-md-2 text-center">
              <b>Post a Reply:</b>
          </section>
          <section class="col-md-10">
              <Wrox:Reply_Form runat="server" ID="Reply_Form" />
          </section>
      </div>
  </div>
    <br />
    <br />
</asp:Content>

