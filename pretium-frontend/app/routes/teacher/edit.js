import Ember from 'ember';

export default Ember.Route.extend({
	model() {
		let teacher = this.modelFor("teacher");
		return teacher;
  	}
});
