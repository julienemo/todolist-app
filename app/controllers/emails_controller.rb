class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
  end

  def create
    n = rand(1..2)
    n.times do
      Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraph)
    end

    respond_to do |format|
      # this method should work with both html only and js
      format.html { redirect_to email_index_path } # html still needs to reload page
      format.js { }
    end
  end
end
