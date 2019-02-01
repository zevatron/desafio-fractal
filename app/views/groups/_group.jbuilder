json.(group, :id, :nome, :descricao)
json.sport do |json|
    json.partial! "sports/sport" , sport: group.sport
end
json.fundador do |json|
    json.partial! "people/person" , person: group.fundador
end
json.athletes do |json|
    json.array! group.athletes, partial: "athletes/athlete", as: :athlete
end
json.events do |json|
    json.array! group.events, partial: "events/event", as: :event
end
json.url group_url(group)