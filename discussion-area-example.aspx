<%@ Page Title="Discussion Area Example" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="discussion-area-example.aspx.cs" Inherits="areaexample" %>

<%@ Register Src="~/Controls/Reply_Form.ascx" TagPrefix="Wrox" TagName="Reply_Form" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
      <div class="toptitle">
      <div class="container">
        <h1>General > Other</h1>
      </div>
  </div>
  <div class="container">
        <br />
      <a href="create-topic.aspx" class="btn btn-default"><i class="fa fa-plus" aria-hidden="true"></i> Create Thread</a>
      <br />
      <br />
      <div class="row mainfo" style="padding:20px;">
            <section class="col-md-2">
                <br />
              <b>John Smith</b><br />
              <small>Student</small> 
            </section>
            <section class="col-md-8">
                <h4>The Thread Title</h4>
                <p><small>ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus finibus neque convallis pellentesque. Sed nibh sem, pulvinar non leo vel, feugiat volutpat dolor...</small> </p>
            </section>
            <section class="col-md-2 text-center">
                <br />
                <a href="topic.aspx" class="btn btn-default">View Thread</a>
            </section>
          </div>
      <div class="row mainfo" style="padding:20px;">
            <section class="col-md-2">
                <br />
              <b>Guy Jordan</b><br />
              <small>Student</small> 
            </section>
            <section class="col-md-8">
                <h4>The Thread Title 2</h4>
                <p><small>ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus finibus neque convallis pellentesque. Sed nibh sem, pulvinar non leo vel, feugiat volutpat dolor...</small> </p>
            </section>
            <section class="col-md-2 text-center">
                <br />
                <a href="topic.aspx" class="btn btn-default">View Thread</a>
            </section>
          </div>
      <div class="row mainfo" style="padding:20px;">
            <section class="col-md-2">
                <br />
              <b>Hammond Smith</b><br />
              <small>Past Student</small> 
            </section>
            <section class="col-md-8">
                <h4>The Thread Title 3</h4>
                <p><small>ipsum dolor sit amet, consectetur adipiscing elit. Praesent faucibus finibus neque convallis pellentesque. Sed nibh sem, pulvinar non leo vel, feugiat volutpat dolor...</small> </p>
            </section>
            <section class="col-md-2 text-center">
                <br />
                <a href="topic.aspx" class="btn btn-default">View Thread</a>
            </section>
          </div>
      <br />
  </div>
    <br />
    <br />
</asp:Content>

