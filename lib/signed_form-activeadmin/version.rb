module SignedForm
  module ActiveAdmin
    class Version
      MAJOR = 0
      MINOR = 1
      PATCH = 3

      def self.to_s
        "#{MAJOR}.#{MINOR}.#{PATCH}"
      end
    end
  end
end
