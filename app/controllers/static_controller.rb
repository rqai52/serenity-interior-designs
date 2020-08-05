require 'rails/application_controller'

class StaticController < Rails::ApplicationController
  layout false

  def index
  