require 'thor'
require 'active_support/all'

module Napa
  module CLI
    class Generate < Thor
      include Thor::Actions

      desc 'api <NAME>', 'Create a Grape API, Model and Entity'
      def api(name)
        @name = name

        self.class.source_root File.expand_path('../../templates/api', __FILE__)
        say 'Generating api...'
        directory '.', output_directory
        say 'Done!', :green
      end


      no_commands { attr_reader :name }

      no_commands do
        def name_underscore
          name.underscore
        end
      end

      no_commands do
        def name_tableize
          name.tableize
        end
      end

      no_commands do
        def output_directory
          '.'
        end
      end
    end
  end
end
