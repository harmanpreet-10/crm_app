class CustomersController < ApplicationController
  def index
    @customers = Customer.order(:id)
    @heading = 'All Customers'
  end

  def alphabetized
    @customers = Customer.alphabetized
    @heading = 'Alphabetized Customers'
    render :index
  end

  def missing_email
    @customers = Customer.missing_email.order(:id)
    @heading = 'Customers Missing Email'
    render :index
  end
end
