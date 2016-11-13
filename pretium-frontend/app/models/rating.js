import DS from 'ember-data';

export default DS.Model.extend({
	student_id: DS.attr('number'),
	skill_id:  DS.attr('number'),
	teacher_id: DS.attr('number'),
	rating: DS.attr('number'),
	review: DS.attr('string')
});