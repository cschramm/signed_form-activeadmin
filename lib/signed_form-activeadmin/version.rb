module SignedForm
  module ActiveAdmin
    class Version
      MAJOR = 0
      MINOR = 4
      PATCH = 1

      def self.to_s
        "#{MAJOR}.#{MINOR}.#{PATCH}"
      end
    end
  end
end
