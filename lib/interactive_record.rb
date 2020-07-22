require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'pry'

class InteractiveRecord

  def self.table_name
     self.name.downcase.pluralize
  end

  def self.column_names
     sql <<= SQL
        PRAGMA table_info(table_name)
     SQL
  end

end
