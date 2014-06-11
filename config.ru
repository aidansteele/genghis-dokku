require 'rubygems'
require 'genghis'

use Rack::Auth::Basic, 'Genghis' do |u, p|
  u == ENV['GENGHIS_USER'] && p == ENV['GENGHIS_PASSWORD']
end

run Genghis::Server
