require 'rails_helper'

RSpec.describe "CreatingAppointments", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays the appointment' do
    visit '/appointment/new'
    type = 'Cera de cejas'
    comment = 'I like this'

    fill_in 'Type', with: type
    fill_in 'Comment', with: comment

    click_on 'Create Appointment'

    expect(page).to have_content(type)
    expect(page).to have_content(comment)

    appointment = Appointment.order("id").last
    expect(appointment.title).to eq(type)
    expect(appointment.body).to eq(comment)
  end
end
