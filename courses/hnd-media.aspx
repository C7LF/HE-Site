<%@ Page Title="HND Creative Media Production" Language="C#" MasterPageFile="~/courses/courses.master" AutoEventWireup="true" CodeFile="hnd-media.aspx.cs" Inherits="hnd_media" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <div class="article" style="background-image:url('https://placeimg.com/1900/300/tech')">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>HND Creative Media Production</h1>
                    <p class="catblogs">Next Erollment: <strong>September <asp:Label ID="YearLabel" runat="server" Text=""></asp:Label></strong></p>
                    <a class="btn btn-danger" target="_blank" href="https://www.chesterfield.ac.uk/courses/apply?course_category_id=13&course_id=786">
                    <i class="fa fa-pencil fa-lg"></i> Apply Now</a>
                </div>
                <div class="col-sm-6 courserating">
                    <p>Average Course Rating:</p>
                    <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half" aria-hidden="true"></i>
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
            <p>This HND will enable you to develop your knowledge and skills in the fast moving computer games industry. You will meet with current developers and the design and create your own 2D and 3D games as part of a team. The course includes a work placement in your chosen area which will enable you to develop relevant practical skills.</p>
            <ul>
                <li>Practical skills for computer games design</li>
                <li>Game engines</li>
                <li>Level design</li>
                <li>Scripting</li>
                <li>Career development</li>
            </ul>
            <p>Entry requirements:</p>
            <ul>
                <li>A relevant Level 3 qualification, GCSE English and maths at grade C or above (or Level 2 equivalent), Mature students with relevant experience will also be considered</li>
            </ul>
            <br />
            <h3>Who is this course for?</h3>
            <p>This is course can be studied full-time over two years (12 hours per week) or three years part-time (four hours per week). You will also need to dedicate some time to self-study and research.</p>
            <br />
            <h3>Where will this lead?</h3>
            <p>Successful completion of this HND in Creative Media Production can lead on to a wide range of roles such as game designer, game programmer, technical artist or level editor. At the end of your study you will have developed the skills and qualifications necessary to start work in a games career of your choice. Alternatively you could also choose to study an extra year to ‘top-up’ your qualification to a full honours degree at a university after completion of the HND.</p>
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
            <p>Pearson Education</p>
            <br />
            <strong>Level:</strong>
            <p>Level 5</p>
            <br />
            <strong>Attendance:</strong>
            <p>Full-time</p>
            <br />
            <strong>Duration:</strong>
            <p>2 years</p>
            <br />
            <strong>Availability:</strong>
            <p>Full-time</p>
            <br />
            <strong>Higher education course fee:</strong>
            <p>£5995 - This includes registration fees and is an annual cost.</p>
            <br />
            <strong>Funding:</strong>
            <p>Higher Education Student Loan or Sponsorship</p>
            <br />
            <strong>Higher education bursary:</strong>
            <p>FT courses only</p>
            <br />
            <a href="https://www.chesterfield.ac.uk/courses/apply?course_category_id=13&course_id=786" target="_blank" class="btn btn-block btn-primary btn-lg">Apply Now</a>
            <br />
        </div>
        </div>
    </div>
</asp:Content>

