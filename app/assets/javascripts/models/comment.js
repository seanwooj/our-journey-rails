var OurJourney = window.OurJourney || {};

(function(){
  OurJourney.Models.Comment = Backbone.Model.extend({
    urlRoot: '/api/comments'
  });
})();