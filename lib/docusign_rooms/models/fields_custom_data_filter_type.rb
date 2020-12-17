=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Rooms
  class FieldsCustomDataFilterType
    
    NONE = 'None'.freeze
    IS_REQUIRED_ON_CREATE = 'IsRequiredOnCreate'.freeze
    IS_REQUIRED_ON_SUBMIT = 'IsRequiredOnSubmit'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = FieldsCustomDataFilterType.constants.select { |c| FieldsCustomDataFilterType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FieldsCustomDataFilterType" if constantValues.empty?
      value
    end
  end
end
