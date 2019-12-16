class StaticPagesController < ApplicationController
  def home
  end

  def services
  end

  def whoweare
  end

  def contact
  end

  def help
  end

  def faq
  end

  def robots
    respond_to :text
    expires_in 6.hours, public: true
  end
end
