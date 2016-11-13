import Ember from 'ember';

export default Ember.Controller.extend({
	init: function () {
		
	},
	teachers : function() {
        var teachers = this.get('store').findAll('teacher');
        return teachers;
    }.property('model'),
    actions: {
    	viewTeacher: function(teacher){
    		debugger;
			this.transitionToRoute('teacher.view',teacher);
		},
		editTeacher: function(teacher){
			this.transitionToRoute('teacher.edit',teacher);
		},
		deleteTeacher: function(teacher){
			teacher.destroyRecord();
			alert("deleted successfully");
		}
	}
});