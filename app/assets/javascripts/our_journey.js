window.OurJourney = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function () {
    //  start listening to changes in the location bar (again, which we probably won't need)
    Backbone.history.start();
  }
}


// Initialize upon page load using the jQuery shortcut
$(OurJourney.initialize)