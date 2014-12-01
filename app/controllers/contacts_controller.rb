class ContactsController < ApplicationController
  def index
    @page_title = 'Contact'
    @contacts = Contact.all
  end

  def create
  end
  
end
