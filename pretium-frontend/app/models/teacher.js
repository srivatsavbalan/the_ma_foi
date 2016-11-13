import DS from 'ember-data';

export default DS.Model.extend({
	name: DS.attr('string'),
	designation: DS.attr('string'),
	dob : DS.attr('string'),
	gender : DS.attr('string'),
	nationality : DS.attr('string'),
	marital_status : DS.attr('string'),
	spouse_name: DS.attr('string'),
	address: DS.attr('string'),
	contact_number: DS.attr('string'),
	secondary_school: DS.attr('string'),
	senior_secondary_school: DS.attr('string'),
	graduation: DS.attr('string'),
	post_graduation: DS.attr('string')
});
