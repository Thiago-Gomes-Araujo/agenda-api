namespace :dev do
    desc "Configura o Ambiente de Desenvolvimento"
    task setup: :environment do
        p "Cadastranto dados..."
        10.times do |i|
            Contact.create!(
              name: Faker::Name.name,
              email:Faker::Internet.email,
              birthdate: Faker::Date.between(40.years.ago, 18.years.ago),
              kind: Kind.all.sample
            )
        end
        p "Fim de Cadastro..."
    end
end