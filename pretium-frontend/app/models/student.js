import DS from 'ember-data';

export default DS.Model.extend({
	name: DS.attr('string'),
	dob: DS.attr('string'),
	gender: DS.attr('string'),
	nationality: DS.attr('string'),
	address: DS.attr('string'),
	father_name: DS.attr('string'),
	mother_name: DS.attr('string'),
	spouse_name: DS.attr('string'),
	primary_school: DS.attr('string'),
	secondary_school: DS.attr('string'),
	senior_secondary_school: DS.attr('string'),
	higher_secondary_school: DS.attr('string'),
	graduation: DS.attr('string'),
	post_graduation: DS.attr('string'),
	co_curricular: DS.attr('string'),
	extra_curricular: DS.attr('string'),
	archivements: DS.attr('string'),
	pretium_rating: DS.attr('string')
});