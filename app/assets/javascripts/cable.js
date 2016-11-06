// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer("ws://localhost:3000/channels");

  App.mocks = App.cable.subscriptions.create("MocksChannel", {
    connected: function(){
      console.log("connected");
    },
    received: function(msg){
      console.log(msg);
    }
  });

}).call(this);
