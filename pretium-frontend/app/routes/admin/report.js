import Ember from 'ember';

export default Ember.Route.extend({
	model() {
		let report = this.modelFor("student");
		return report;
  	},

  afterModel: function(model,transition) {
  
  		
   
  },

	actions: {
		afterRender: function () {
			
				var selector = document.getElementById("char_1");
				console.log(selector);	

		}
	}
});
