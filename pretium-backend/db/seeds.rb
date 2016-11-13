# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skillCategory1 = SkillsCategory.create({
  category_name: "Character"
});
skillCategory2 = SkillsCategory.create({
  category_name: "Character"
});
skillSubCategory1 = skillCategory1.skills_sub_categories.create({
  sub_category_name: "Intent"
})
skillSubCategory2 = skillCategory1.skills_sub_categories.create({
  sub_category_name: "Integrity"
})
skillSubCategory1.skills.create({ name: "Caring" })
skillSubCategory1.skills.create({ name: "Transperancy" })
skillSubCategory1.skills.create({ name: "Openness" })
skillSubCategory2.skills.create({ name: "Honesty" })
skillSubCategory2.skills.create({ name: "Fairness" })

skillSubCategory3 = skillCategory2.skills_sub_categories.create({
  sub_category_name: "Capability"
})
skillSubCategory4 = skillCategory2.skills_sub_categories.create({
  sub_category_name: "Results"
})
skillSubCategory3.skills.create({ name: "Skills" })
skillSubCategory3.skills.create({ name: "Knowledge" })
skillSubCategory4.skills.create({ name: "Reputation" })
skillSubCategory4.skills.create({ name: "Credibility" })
skillSubCategory4.skills.create({ name: "Performance" })