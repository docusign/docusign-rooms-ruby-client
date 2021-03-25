=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Rooms
  class MemberSortingOption
    
    FIRST_NAME_ASC = 'FirstNameAsc'.freeze
    LAST_NAME_ASC = 'LastNameAsc'.freeze
    EMAIL_ASC = 'EmailAsc'.freeze
    FIRST_NAME_DESC = 'FirstNameDesc'.freeze
    LAST_NAME_DESC = 'LastNameDesc'.freeze
    EMAIL_DESC = 'EmailDesc'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = MemberSortingOption.constants.select { |c| MemberSortingOption::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #MemberSortingOption" if constantValues.empty?
      value
    end
  end
end
