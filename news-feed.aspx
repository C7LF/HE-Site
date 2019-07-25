<%@ Page Title="News" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="news-feed.aspx.cs" Inherits="news" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
      <div class="toptitle">
      <div class="container">
        <h1>News</h1>
      </div>
  </div>
    <br />
    <br />
    <div class="container">
  <div class="row">
                        <div class="col-sm-3">
                            <div class="yournews">
                                <a href="news/Article1.aspx">
                                <img src="https://placeimg.com/640/480/tech" width="100%" />
                                <h3>News Article 1</h3>
                                </a>
                                <small><strong>In Catgory:</strong> How To's</small>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="yournews">
                                <a href="news/Article1.aspx">
                                <img src="https://placeimg.com/640/480/tech" width="100%" />
                                <h3>News Article 2</h3>
                                </a>
                                <small><strong>In Catgory:</strong> How To's</small>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                    <div class="col-sm-3">
                            <div class="yournews">
                                <a href="news/Article1.aspx">
                                <img src="https://placeimg.com/640/480/tech" width="100%" />
                                <h3>News Article 3</h3>
                                </a>
                                <small><strong>In Catgory:</strong> How To's</small>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                    <div class="col-sm-3">
                            <div class="yournews">
                                <a href="news/Article1.aspx">
                                <img src="https://placeimg.com/640/480/tech" width="100%" />
                                <h3>News Article 4</h3>
                                </a>
                                <small><strong>In Catgory:</strong> How To's</small>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
      </div>
        <br />
        <div class="row">
                        <div class="col-sm-3">
                            <div class="collegenews btext">
                                <a href="news/Article2.aspx">
                                <img src="https://placeimg.com/640/480/arch" width="100%" />
                                <h3>News Article 2</h3>
                                </a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="collegenews btext">
                                <a href="news/Article2.aspx">
                                <img src="https://placeimg.com/640/480/nature" width="100%" />
                                <h3>News Article 3</h3>
                                </a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare rutrum neque, id pellentesque tortor tempus eu. </p>
                            </div>
                        </div>
                        <div class="col-sm-3">
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
    <br />
</asp:Content>

