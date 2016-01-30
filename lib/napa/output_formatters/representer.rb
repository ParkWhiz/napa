require 'roar/decorator'
require 'roar/json'
require 'roar/coercion'

module Napa
  class Representer < Roar::Decorator
    include Roar::Representer::JSON
    include ::Representable::Coercion

    property :object_type, getter: ->(*) { self.class.name.underscore }
  end
end
