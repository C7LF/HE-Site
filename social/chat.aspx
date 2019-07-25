<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="social_chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div class="toptitle">
      <div class="container">
        <h1>Main Chat Room</h1>
      </div>
  </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="row">
        <br />
            <div class="col-sm-10">
                <input type="text" id="message" placeholder="Enter your message here..." class="form-control" />
            </div>
            <div class="col-sm-2">
                <input type="button" id="sendmessage" value="Send" class="btn btn-primary btn-block" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <input type="hidden" id="displayname" />
                <ul id="discussion">
                </ul>
            </div>
        </div>
            </div>
            <div class="col-sm-2">
                <h3>Online Users</h3>
                <ul id="user-list">
                </ul>
            </div>
        </div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
        <script type="text/javascript">

            $(function () {
            // Declare a proxy to reference the hub. 
            var chat = $.connection.chatHub;
            // Create a function that the hub can call to broadcast messages.
            chat.client.broadcastMessage = function (name, message) {
                // Html encode display name and message. 
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(message).html();
                // Add the message to the page. 
                $('#discussion').append('<li><img src="../getImage.aspx" class="img-circle ppcricle" width="30px" height="30px" alt="profile image" /> &nbsp; <strong>' + encodedName
                    + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
            };
            // Set initial focus to message input box.  
            $('#message').focus();
            // Start the connection.
            $.connection.hub.start().done(function () {
                chat.server.getAllActiveConnections().done(function (connections) {
                    $.map(connections, function (item) {
                        $("#user-list").append("<li>" + item + "</li>");
                    });
                });
                $('#sendmessage').click(function () {
                    // Call the Send method on the hub. 
                    if (!$('#message').val()) {
                        $('#message').addClass('warningd');
                    } else {
                        chat.server.send($('#displayname').val(), $('#message').val());
                        // Clear text box and reset focus for next comment. 
                        $('#message').val('').focus();
                        $('#message').removeClass('warningd');
                    }
                });
            });
            });
            
    </script>
</asp:Content>

