require 'rails_helper'

RSpec.describe "professors index page", type: :feature do
    describe "as a visitor" do
        it "can see all professors and their info" do
        professor1 = Professor.create(name: "Minerva McGonagall",
                                       age: "204",
                                       specialty: "Transfiguration")

        visit "/professors"

        expect(page).to have_content(professor1.name)
        expect(page).to have_content(professor1.age)
        expect(page).to have_content(professor1.specialty)

        end
      end
  end


# User Story 1 of 4
# As a visitor,
# When I visit '/professors',
# I see a list of professors with the following information:
# -Name
# -Age
# -Specialty
# (e.g. "Name: Minerva McGonagall, Age: 204, Specialty: Transfiguration")
