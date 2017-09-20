class CustomerServiceController < ApplicationController
  include CurrentCart

  skip_before_action :authorize
  def question
  end

  def contact
  end

  def about
  end
end
