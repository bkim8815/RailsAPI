# This file is used by Rack-based servers to start the application.
require 'cors'
require_relative 'config/environment'
use Cors
run Rails.application
