window.OurJourney = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},

  initialize: function (data) {
    //  start listening to changes in the location bar (again, which we probably won't need)
    var posts = new OurJourney.Collections.Posts(data.posts);
    new OurJourney.Routers.Posts({posts : posts});
    Backbone.history.start();
  }
}
