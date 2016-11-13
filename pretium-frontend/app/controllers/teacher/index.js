import Ember from 'ember';

export default Ember.Controller.extend({
	init: function () {
		
	},
	teachers : function() {
        var teachers = this.get('store').findAll('teacher');
        return teachers;
    }.property('model')
});