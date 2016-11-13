import Ember from 'ember';

export default Ember.Controller.extend({
	init: function () {
		if(window.localStorage.role!=="admin"){
			let id = window.localStorage.getItem("userid");
			var student = this.get('store').findRecord('student',id);
			this.transitionToRoute('student.view',student);
		}
	},
	students : function() {
		var students = this.get('store').findAll('student');
        return students;
    }.property('model'),
    actions: {
    	viewStudent: function(student){
    		debugger;
			this.transitionToRoute('student.view',student);
		},
		editStudent: function(student){
			this.transitionToRoute('student.edit',student);
		},
		deleteStudent: function(student){
			student.destroyRecord();
			alert("deleted successfully");
		}
	}
});