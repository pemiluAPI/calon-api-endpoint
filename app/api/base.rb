# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require 'v1/pemilu.rb'
#require 'v2/pemilu.rb'

module Base
  class API < Grape::API
    mount Pemilu::APIv1
    #mount Pemilu::APIv2
  end
end
