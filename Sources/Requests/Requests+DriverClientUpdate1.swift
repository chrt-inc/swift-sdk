import Foundation

extension Requests {
    public struct DriverClientUpdate1: Codable, Hashable, Sendable {
        public let emailAddressPrimary: String?
        public let emailAddressPrimarySetToNone: Bool?
        public let emailAddressSecondary: String?
        public let emailAddressSecondarySetToNone: Bool?
        public let firstName: String?
        public let firstNameSetToNone: Bool?
        public let lastName: String?
        public let lastNameSetToNone: Bool?
        public let phoneNumberPrimary: String?
        public let phoneNumberPrimarySetToNone: Bool?
        public let phoneNumberSecondary: String?
        public let phoneNumberSecondarySetToNone: Bool?
        public let vehicleTypes: [VehicleTypeEnum]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddressPrimary: String? = nil,
            emailAddressPrimarySetToNone: Bool? = nil,
            emailAddressSecondary: String? = nil,
            emailAddressSecondarySetToNone: Bool? = nil,
            firstName: String? = nil,
            firstNameSetToNone: Bool? = nil,
            lastName: String? = nil,
            lastNameSetToNone: Bool? = nil,
            phoneNumberPrimary: String? = nil,
            phoneNumberPrimarySetToNone: Bool? = nil,
            phoneNumberSecondary: String? = nil,
            phoneNumberSecondarySetToNone: Bool? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailAddressPrimary = emailAddressPrimary
            self.emailAddressPrimarySetToNone = emailAddressPrimarySetToNone
            self.emailAddressSecondary = emailAddressSecondary
            self.emailAddressSecondarySetToNone = emailAddressSecondarySetToNone
            self.firstName = firstName
            self.firstNameSetToNone = firstNameSetToNone
            self.lastName = lastName
            self.lastNameSetToNone = lastNameSetToNone
            self.phoneNumberPrimary = phoneNumberPrimary
            self.phoneNumberPrimarySetToNone = phoneNumberPrimarySetToNone
            self.phoneNumberSecondary = phoneNumberSecondary
            self.phoneNumberSecondarySetToNone = phoneNumberSecondarySetToNone
            self.vehicleTypes = vehicleTypes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressPrimarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressPrimarySetToNone)
            self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
            self.emailAddressSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressSecondarySetToNone)
            self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
            self.firstNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .firstNameSetToNone)
            self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
            self.lastNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .lastNameSetToNone)
            self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberPrimarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberPrimarySetToNone)
            self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.phoneNumberSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSecondarySetToNone)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeIfPresent(self.emailAddressPrimarySetToNone, forKey: .emailAddressPrimarySetToNone)
            try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeIfPresent(self.emailAddressSecondarySetToNone, forKey: .emailAddressSecondarySetToNone)
            try container.encodeIfPresent(self.firstName, forKey: .firstName)
            try container.encodeIfPresent(self.firstNameSetToNone, forKey: .firstNameSetToNone)
            try container.encodeIfPresent(self.lastName, forKey: .lastName)
            try container.encodeIfPresent(self.lastNameSetToNone, forKey: .lastNameSetToNone)
            try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeIfPresent(self.phoneNumberPrimarySetToNone, forKey: .phoneNumberPrimarySetToNone)
            try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeIfPresent(self.phoneNumberSecondarySetToNone, forKey: .phoneNumberSecondarySetToNone)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailAddressPrimary = "email_address_primary"
            case emailAddressPrimarySetToNone = "email_address_primary__set_to_None"
            case emailAddressSecondary = "email_address_secondary"
            case emailAddressSecondarySetToNone = "email_address_secondary__set_to_None"
            case firstName = "first_name"
            case firstNameSetToNone = "first_name__set_to_None"
            case lastName = "last_name"
            case lastNameSetToNone = "last_name__set_to_None"
            case phoneNumberPrimary = "phone_number_primary"
            case phoneNumberPrimarySetToNone = "phone_number_primary__set_to_None"
            case phoneNumberSecondary = "phone_number_secondary"
            case phoneNumberSecondarySetToNone = "phone_number_secondary__set_to_None"
            case vehicleTypes = "vehicle_types"
        }
    }
}