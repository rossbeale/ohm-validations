require "scrivener/validations"
require "scrivener/contrib"

module Ohm
  module Validations
    include Scrivener::Validations

    module Callbacks
      def valid?
        before_validate

        result = super

        after_validate

        result
      end

      def save
        return if not valid?
        super
      end

      protected

      def before_validate
      end

      def after_validate
      end
    end

    include Callbacks
  end
end
