var OurJourney = window.OurJourney || {};

(function(){
  'use strict';

  OurJourney.Models.Post = Backbone.Model.extend({
    modelName: 'Post',
    url: function() {
      return 'api/posts/' + this.id;
    },

    initialize: function () {
      console.log('i fucking happened');
    },

    comments: function() {
      if(!this._comments) {
        this._comments = new OurJourney.Collections.Comments([], {
          post: this
        });
      }

      return this._comments
    }

  });
})();