require 'rails_helper'

RSpec.describe "professor show page", type: :feature do
    describe "as a visitor" do
        it 'can see all professor students' do

        snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
        hagarid = Professor.create(name: "Rubus Hagarid", age: 38 , specialty: "Care of Magical Creatures")
        lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

        harry = Student.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
        malfoy = Student.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )
        longbottom = Student.create(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )

        ProfessorStudent.create(student: harry, professor: snape)
        ProfessorStudent.create(student: malfoy, professor: hagarid)
        ProfessorStudent.create(student: longbottom, professor: snape)

        visit "/professors/#{snape.id}"

        expect(page).to have_content("Harry Potter")
        expect(page).to have_content("Draco Malfoy")
        expect(page).to have_content("Neville Longbottom")

        end
      end
    end

# User Story 2 of 4
# As a visitor,
# When I visit '/professors/:id'
# I see a list of the names of the students the professors have.
# (e.g. "Neville Longbottom"
# "Hermione Granger"
# "Luna Lovegood")
