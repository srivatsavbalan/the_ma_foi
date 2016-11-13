import Ember from 'ember';

export default Ember.Route.extend({
			model() {
		let id = window.localStorage.getItem("userid");
    return this.get('store').findRecord('teacher',id);
  	}
});
