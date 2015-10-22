var OurJourney = window.OurJourney || {};

(function(){
  OurJourney.Collections.Comments = Backbone.Collection.extend({

    initialize: function (models, options) {
      this.post = options.post;
    },

    url: function(){
      return this.post.url() + '/comments';
    },

    model: OurJourney.Models.Post

  });
})();