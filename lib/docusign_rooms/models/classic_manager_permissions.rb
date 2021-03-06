=begin
#DocuSign Rooms API - v2

#An API for an integrator to access the features of DocuSign Rooms

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_Rooms
  class ClassicManagerPermissions
    attr_accessor :is_visible_in_transaction_rooms

    attr_accessor :can_delete_company_rooms

    attr_accessor :can_delete_company_documents

    attr_accessor :can_manage_company_rooms

    attr_accessor :can_manage_company_account

    attr_accessor :can_manage_company_shared_library

    attr_accessor :can_manage_company_members

    attr_accessor :can_close_company_rooms

    attr_accessor :can_approve_company_checklists

    attr_accessor :is_company_system_admin

    attr_accessor :is_region_manager

    attr_accessor :is_office_manager

    attr_accessor :auto_access_to_company_rooms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_visible_in_transaction_rooms' => :'isVisibleInTransactionRooms',
        :'can_delete_company_rooms' => :'canDeleteCompanyRooms',
        :'can_delete_company_documents' => :'canDeleteCompanyDocuments',
        :'can_manage_company_rooms' => :'canManageCompanyRooms',
        :'can_manage_company_account' => :'canManageCompanyAccount',
        :'can_manage_company_shared_library' => :'canManageCompanySharedLibrary',
        :'can_manage_company_members' => :'canManageCompanyMembers',
        :'can_close_company_rooms' => :'canCloseCompanyRooms',
        :'can_approve_company_checklists' => :'canApproveCompanyChecklists',
        :'is_company_system_admin' => :'isCompanySystemAdmin',
        :'is_region_manager' => :'isRegionManager',
        :'is_office_manager' => :'isOfficeManager',
        :'auto_access_to_company_rooms' => :'autoAccessToCompanyRooms'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_visible_in_transaction_rooms' => :'BOOLEAN',
        :'can_delete_company_rooms' => :'BOOLEAN',
        :'can_delete_company_documents' => :'BOOLEAN',
        :'can_manage_company_rooms' => :'BOOLEAN',
        :'can_manage_company_account' => :'BOOLEAN',
        :'can_manage_company_shared_library' => :'BOOLEAN',
        :'can_manage_company_members' => :'BOOLEAN',
        :'can_close_company_rooms' => :'BOOLEAN',
        :'can_approve_company_checklists' => :'BOOLEAN',
        :'is_company_system_admin' => :'BOOLEAN',
        :'is_region_manager' => :'BOOLEAN',
        :'is_office_manager' => :'BOOLEAN',
        :'auto_access_to_company_rooms' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'isVisibleInTransactionRooms')
        self.is_visible_in_transaction_rooms = attributes[:'isVisibleInTransactionRooms']
      end

      if attributes.has_key?(:'canDeleteCompanyRooms')
        self.can_delete_company_rooms = attributes[:'canDeleteCompanyRooms']
      end

      if attributes.has_key?(:'canDeleteCompanyDocuments')
        self.can_delete_company_documents = attributes[:'canDeleteCompanyDocuments']
      end

      if attributes.has_key?(:'canManageCompanyRooms')
        self.can_manage_company_rooms = attributes[:'canManageCompanyRooms']
      end

      if attributes.has_key?(:'canManageCompanyAccount')
        self.can_manage_company_account = attributes[:'canManageCompanyAccount']
      end

      if attributes.has_key?(:'canManageCompanySharedLibrary')
        self.can_manage_company_shared_library = attributes[:'canManageCompanySharedLibrary']
      end

      if attributes.has_key?(:'canManageCompanyMembers')
        self.can_manage_company_members = attributes[:'canManageCompanyMembers']
      end

      if attributes.has_key?(:'canCloseCompanyRooms')
        self.can_close_company_rooms = attributes[:'canCloseCompanyRooms']
      end

      if attributes.has_key?(:'canApproveCompanyChecklists')
        self.can_approve_company_checklists = attributes[:'canApproveCompanyChecklists']
      end

      if attributes.has_key?(:'isCompanySystemAdmin')
        self.is_company_system_admin = attributes[:'isCompanySystemAdmin']
      end

      if attributes.has_key?(:'isRegionManager')
        self.is_region_manager = attributes[:'isRegionManager']
      end

      if attributes.has_key?(:'isOfficeManager')
        self.is_office_manager = attributes[:'isOfficeManager']
      end

      if attributes.has_key?(:'autoAccessToCompanyRooms')
        self.auto_access_to_company_rooms = attributes[:'autoAccessToCompanyRooms']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_visible_in_transaction_rooms == o.is_visible_in_transaction_rooms &&
          can_delete_company_rooms == o.can_delete_company_rooms &&
          can_delete_company_documents == o.can_delete_company_documents &&
          can_manage_company_rooms == o.can_manage_company_rooms &&
          can_manage_company_account == o.can_manage_company_account &&
          can_manage_company_shared_library == o.can_manage_company_shared_library &&
          can_manage_company_members == o.can_manage_company_members &&
          can_close_company_rooms == o.can_close_company_rooms &&
          can_approve_company_checklists == o.can_approve_company_checklists &&
          is_company_system_admin == o.is_company_system_admin &&
          is_region_manager == o.is_region_manager &&
          is_office_manager == o.is_office_manager &&
          auto_access_to_company_rooms == o.auto_access_to_company_rooms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_visible_in_transaction_rooms, can_delete_company_rooms, can_delete_company_documents, can_manage_company_rooms, can_manage_company_account, can_manage_company_shared_library, can_manage_company_members, can_close_company_rooms, can_approve_company_checklists, is_company_system_admin, is_region_manager, is_office_manager, auto_access_to_company_rooms].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_Rooms.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
