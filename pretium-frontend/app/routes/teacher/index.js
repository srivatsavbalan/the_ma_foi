import Ember from 'ember';

export default Ember.Route.extend({
	model() {
		var id = window.localStorage.getItem("userid");
    	return this.get('store').findRecord('teacher',id);
  	}
});
