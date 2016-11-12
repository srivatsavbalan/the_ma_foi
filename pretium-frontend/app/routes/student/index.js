import Ember from 'ember';

export default Ember.Route.extend({
	model(params) {
		//var userid = window.localStorage.getItem("userid");
    	return this.get('store').findAll('student');
  	}

});