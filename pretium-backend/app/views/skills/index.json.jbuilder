json.skills do
  json.array! @skills, partial: 'skills/skill', as: 'skill'
end