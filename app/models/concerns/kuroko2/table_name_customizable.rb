module Kuroko2
  module TableNameCustomizable
    extend ActiveSupport::Concern

    included do
      self.table_name = self.kuroko2_table_name
    end

    module ClassMethods
      def kuroko2_table_name
        self.name.gsub(/^Kuroko2::/, '').underscore.pluralize
      end
    end
  end
end