import Ember from 'ember';

export default Ember.Route.extend({
	model() {
		let student = this.modelFor("student");
		return student;
  	}
});
