import Ember from 'ember';

export default Ember.Controller.extend({
	init: function () {
		var role = window.localStorage.getItem("role");
		if(role){
			this.transitionToRoute(role);
		}
	},
	actions: {
        login() {
        	let username = $("#username").val();
        	let password = $("#password").val();
        	let param={};
        	param.email=username;
        	param.password=password;
        	var appDesc = this.store.adapterFor('application');
        	var host = appDesc.get('host');
			var namespace = appDesc.namespace;
			var postUrl;
			if(namespace){
				postUrl = [ host, namespace, 'users/login.json' ].join('/');
			}else{
				postUrl = [ host, 'users/login.json' ].join('/');
			}
			let slf= this;
			//postUrl=host+"/students.json";
			Ember.$.post(postUrl, param).then(function (repos) {
				window.localStorage.setItem("userid",repos.id);
				window.localStorage.setItem("authtoken",repos.token);
				var role="teacher";
				if(repos.role){
					role=repos.role;
				}
				window.localStorage.setItem("role",role);
				slf.transitionToRoute(role);
			}, function(a,b,c){
				Ember.$("#loginError").show();
				setTimeout(function(){Ember.$("#loginError").hide()}, 2000);
				console.log(a);
			});
        }
    }
});