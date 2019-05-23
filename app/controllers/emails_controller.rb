class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
  end

  def create
    @email = Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraph)

    if @email
      respond_to do |format|
        # this method should work with both html only and js
        format.html {
          redirect_to email_index_path
         } # html still needs to reload page
        format.js { }
      end
    else
      flash[:danger]="creation failed"
    end
  end

  def show
    @id = params[:id]
    @email = Email.find(@id)
    respond_to do |format|
      format.js { }

    end

  end
end
