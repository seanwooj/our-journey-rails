var OurJourney = window.OurJourney || {};

(function(){
  'use strict';

  OurJourney.Views.PostIndexView = Backbone.Marionette.CollectionView.extend({
    childView: OurJourney.Views.PostView,

    initialize: function (options) {

    },
  });

  // move this to its own file
  OurJourney.Views.PostView = Backbone.MarionetteItemView.extend({
    template: JST['post.jst.ejs']
  });
})();