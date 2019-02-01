json.(athlete, :id, :score )
json.person do |json|
    json.partial! "people/person", person: athlete.person
end
json.url athlete_url(athlete)