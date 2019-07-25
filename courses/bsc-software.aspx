<%@ Page Title="BSc Software Development" Language="C#" MasterPageFile="~/courses/courses.master" AutoEventWireup="true" CodeFile="bsc-software.aspx.cs" Inherits="bsc_software" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <div class="article" style="background-image:url('https://placeimg.com/1900/300/tech')">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>BSc Hons Computer Software Development (top-up)</h1>
                    <p class="catblogs">Next Erollment: <strong>September <asp:Label ID="YearLabel" runat="server" Text=""></asp:Label></strong></p>
                    <a class="btn btn-danger" target="_blank" href="https://www.chesterfield.ac.uk/courses/apply?course_category_id=13&course_id=788">
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
            <h2>Course overview</h2>
            <p>During this course you will study aspects of computing that have a practical impact of business and everyday life. You’ll focus on the practical hands on side of computing learning the skills and knowledge required to gain professional employment.</p>
            <ul>
                <li>Web designer</li>
                <li>Database design and implementation</li>
                <li>Switched and Routed networks</li>
                <li>Network servers</li>
                <li>Virtualisation</li>
            </ul>
            <p>Entry requirements:</p>
            <ul>
                <li>Level 5 qualification in a relevant subject</li>
                <li>GCSE English and maths at grade C or above (Level 2 equivalent)</li>
                <li>Mature students with relevant work experience will also be considered</li>
            </ul>
            <br />
            <h3>Who is this course for?</h3>
            <p>This is course can be studied full-time over two years (12 hours per week) or three years part-time (four hours per week). You will also need to dedicate some time to self-study and research.</p>
            <br />
            <h3>Where will this lead?</h3>
            <p>You can choose to ‘top-up’ your qualification by studying the BSc (Hons) Computing with Networks/Software development course at college, which is validated by Sheffield Hallam University. You could also work in industry with roles including:</p>
            <ul>
                <li>Web designer</li>
                <li>Game developer</li>
                <li>IT project manager</li>
                <li>Network administrator</li>
                <li>Helpdesk support</li>
                <li>IT consultant</li>
            </ul>
        </div>
        <div class="col-sm-3 panel aftc sidebarcourse">
            <h2>Course Specifics</h2>
            <strong>Awarding body:</strong>
            <p>Sheffield Hallam University</p>
            <br />
            <strong>Level:</strong>
            <p>Level 6</p>
            <br />
            <strong>Attendance:</strong>
            <p>Part-time | Full-time</p>
            <br />
            <strong>Duration:</strong>
            <p>1-2 years</p>
            <br />
            <strong>Availability:</strong>
            <p>Full-time and Part-time</p>
            <br />
            <strong>Higher education course fee:</strong>
            <p>Available upon request - Please call Sharon Woodward-Baker on 01246500764.</p>
            <br />
            <strong>Funding:</strong>
            <p>Higher Education Student Loan or Sponsorship</p>
            <br />
            <strong>Higher education bursary:</strong>
            <p>FT courses only</p>
            <br />
            <a href="https://www.chesterfield.ac.uk/courses/apply?course_category_id=13&course_id=788" target="_blank" class="btn btn-block btn-primary btn-lg">Apply Now</a>
            <br />
        </div>
        </div>
    </div>
</asp:Content>

