import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
    this.route('user', { path: '/user' },function() {
        this.route('login',{"path" : "/"});
        this.route('login');
        this.route('logout');
  	});
  	this.route('teacher.add', {path:'/teacher/add'});
  	this.route('teacher.index', {path:'/teacher'});
	this.route('teacher', {path:'/teacher/:teacher_id'},function(){
		this.route('edit');
	});
	this.route('student', {path:'/student'},function(){
	});
	this.route('guest', {path:'/guest'},function(){
	});

});

export default Router;
