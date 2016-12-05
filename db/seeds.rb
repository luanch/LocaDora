# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Gerando os clientes..."
10.times do |i|
  params = {
      cliente: {
          telefone: Faker::PhoneNumber.phone_number,
          endereco: Faker::Address.street_name,
          pessoa_attributes: {
             nome: Faker::Name.name,
             email: Faker::Internet.email,
             cpf: Faker::Number.number(11).to_s
          }
      }
  }
  Cliente.create!( params[:cliente])
end
puts "Gerando os clientes... [OK]"

puts "Gerando os Funcionarios..."
10.times do |i|
  params ={
      funcionario:{
          matricula: Faker::Number.number(3),
          pessoa_attributes: {
              nome: Faker::Name.name,
              email: Faker::Internet.email,
              cpf: Faker::Number.number(11).to_s
          }
      }
  }
  p params[:funcionario]
  Funcionario.create!(params[:funcionario]
  )
end
puts "Gerando os funcionarios... [OK]"

puts "Gerando os Atores..."
        atores = [{ nome: "Nicolas Cage", sexo:"masculino"} ,
        { nome: "Brad Pitt", sexo:"masculino"},
        { nome: "Will Smith", sexo:"masculino"},
        { nome: "Adam Sandler", sexo:"masculino"} ,
        { nome: "Jim Carrey", sexo:"masculino"},
        { nome: "Tom Cruise", sexo:"masculino"},
        { nome: "Denzel Washington", sexo:"masculino"} ,
        { nome: "Angelina Jolie", sexo:"feminino"},
        { nome: "Tom Hanks", sexo:"masculino"},
        { nome: "Al Pacino", sexo:"masculino"} ,
        { nome: "Johnny Depp", sexo:"masculino"},
        { nome: "Leonardo DiCaprio", sexo:"masculino"},
        { nome: "Robin Williams", sexo:"masculino"} ,
        { nome: "Bruce Willis", sexo:"masculino"},
        { nome: "Robert De Niro", sexo:"masculino"},
        { nome: "Morgan Freeman", sexo:"masculino"},
        { nome: "Sandra Bullock", sexo:"feminino"},
        { nome: "Clint Eastwood", sexo:"masculino"} ,
        { nome: "John Travolta", sexo:"masculino"},
        { nome: "Jet Li", sexo:"masculino"},
        { nome: "Mel Gibson", sexo:"masculino"},
        { nome: "Sylvester Stallone", sexo:"masculino"},
        { nome: "Kevin Costner", sexo:"masculino"},
        { nome: "Cameron Diaz", sexo:"feminino"},
        { nome: "Richard Gere", sexo:"masculino"} ,
        { nome: "John Wayne", sexo:"masculino"},
        { nome: "Meryl Streep", sexo:"feminino"},
        { nome: "Jason Statham", sexo:"masculino"}]
atores.each do |ator|
  puts ator
  Ator.create!(ator)
end
puts "Gerando os funcionarios... [OK]"