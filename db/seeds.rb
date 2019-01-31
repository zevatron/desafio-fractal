# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#A documentação recomenda o uso do ! no create quando fizer isso através do seed.rb


print "Criando Pessoas"
90.times do |i|
    Person.create!(nome: Faker::Name.unique.name, 
    telefone:  Faker::PhoneNumber.phone_number,
    dataNascimento:Faker::Date.birthday(15, 80) #Randon entre 15 e 80 anos 
    )
end
puts "[OK]"

print "Criando Esportes"
Sport.create!(nome: "Ciclismo", descricao: "Breve descrição da atividade", regra: "Regras do esporte")
Sport.create!(nome: "Futebol de Campo", descricao: "Breve descrição da atividade", regra: "Regras do esporte")
Sport.create!(nome: "Futebol de salão", descricao: "Breve descrição da atividade", regra: "Regras do esporte")
Sport.create!(nome: "Vôlei de areia", descricao: "Breve descrição da atividade", regra: "Regras do esporte")
Sport.create!(nome: "Vôlei de quadra", descricao: "Breve descrição da atividade", regra: "Regras do esporte")
Sport.create!(nome: "Basquete", descricao: "Breve descrição da atividade", regra: "Regras do esporte")

puts "[OK]"

print "Criando Grupos"
60.times do |i|
    Group.create!(nome: "Grupo " + i.to_s ,
    descricao: "Descrição do Grupo " + i.to_s,
        sport: Sport.order("RANDOM()").first,
        fundador: Person.order("RANDOM()").first
        )
end
puts "[OK]"

print "Criando Atletas"
60.times do |i|
    Athlete.create!(score: 0.0, person: Person.order("RANDOM()").first)
end
puts "[OK]"

print "Inserindo atletas aos grupos"
30.times do |i|
    grupo = Group.order("RANDOM()").first
    rand(5..30).times do |j|        
        conta = Account.create!(athlete: Athlete.order("RANDOM()").first, group: grupo, status: "ativo" )
        #grupo.accounts << conta
        print " ."
    end
    print "|"
end
puts "[OK]"

print "Criando Eventos para os Grupos"
30.times do |i|
    grupo = Group.order("RANDOM()").first
    rand(3..7).times do |j|
        inicio = Faker::Time.between(Time.now, DateTime.now + 7)
        fim = inicio + (60 * 60 * rand(1..5))
        evento = Event.create!(descricao: Faker::Lorem.sentence, start_time: inicio, end_time: fim, 
            local: Faker::Lorem.word.capitalize, group: grupo)
        #grupo.events << evento
        print " ."
    end
    print "|"
end
puts "[OK]"


