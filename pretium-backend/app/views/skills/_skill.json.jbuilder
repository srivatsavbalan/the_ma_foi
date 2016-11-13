json.extract! skill, :id, :name, :created_at, :updated_at
json.sub_category_name skill.skills_sub_category.sub_category_name
json.category_name skill.skills_sub_category.skills_category.category_name
json.url skill_url(skill, format: :json)