using System;
using System.Web;
using Microsoft.AspNet.SignalR;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;

namespace SignalRChat
{
    public class ChatHub : Hub
    {

        static HashSet<string> CurrentConnections = new HashSet<string>();

        public void Send(string name, string message)
        {
            name = HttpContext.Current.User.Identity.Name;
            Clients.All.broadcastMessage(name, message);
        }

        public override Task OnConnected()
        {
            var id = HttpContext.Current.User.Identity.Name;
            CurrentConnections.Add(id);

            return base.OnConnected();
        }


        //return list of all active connections
        public List<string> GetAllActiveConnections()
        {
            return CurrentConnections.ToList();
        }
    }
}