require 'faker'
class EmailsController < ApplicationController
  def create
    @email = Email.new(object:Faker::Verb.past ,body: Faker::ChuckNorris.fact)
    @email.save
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end 

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def index
    @emails = Email.all
  end
end
