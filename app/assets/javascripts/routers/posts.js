(function(){
    OurJourney.Routers.Posts = Backbone.Router.extend({
    routes: {
      '': 'index'
    },

    index: function() {
      alert('hello world! this is a backbone router action');
    }


  });
})();