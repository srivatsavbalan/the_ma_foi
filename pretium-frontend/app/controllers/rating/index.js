import Ember from 'ember';

export default Ember.Controller.extend({
	students : function() {
		var students = this.get('store').findAll('student');
        return students;
    }.property('model'),
    skills : function() {
		var skills = this.get('store').findAll('skill');
        return skills;
    }.property('model'),
    actions: {
    	saveRating: function(){
			let student = $("#student").val();
			let skills = $("#skills").val();
			let rating = $("#rating").val();
			let review = $("#review").val();
			if(rating>10){
				alert("Sorry, you can you more than 10");
				return;
			}

			let param={};
        	param["student_id"]=student;
        	param["skill_id"]=skills;
        	param["teacher_id"]=window.localStorage.getItem("userid");
            param["rating"]=rating;
            param["review"]=review;


            var post = this.store.createRecord('rating', param);
            var thisObj = this;

            post.save().then((savedRecord) => {
                alert("Record saved..");
                window.location.reload();
            }).catch((xhr) => {
                console.log("error occurred and res status ", xhr);
                thisObj.transitionToRoute('/');
            });
		}
	}
});