import Foundation

extension Requests {
    public struct DriverClientUpdate1: Codable, Hashable, Sendable {
        public let emailAddressPrimary: String?
        public let emailAddressSecondary: String?
        public let phoneNumberPrimary: String?
        public let phoneNumberSecondary: String?
        public let firstName: String?
        public let lastName: String?
        public let vehicleTypes: [VehicleTypeEnum]?
        public let emailAddressPrimarySetToNone: Bool?
        public let emailAddressSecondarySetToNone: Bool?
        public let phoneNumberPrimarySetToNone: Bool?
        public let phoneNumberSecondarySetToNone: Bool?
        public let firstNameSetToNone: Bool?
        public let lastNameSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddressPrimary: String? = nil,
            emailAddressSecondary: String? = nil,
            phoneNumberPrimary: String? = nil,
            phoneNumberSecondary: String? = nil,
            firstName: String? = nil,
            lastName: String? = nil,
            vehicleTypes: [VehicleTypeEnum]? = nil,
            emailAddressPrimarySetToNone: Bool? = nil,
            emailAddressSecondarySetToNone: Bool? = nil,
            phoneNumberPrimarySetToNone: Bool? = nil,
            phoneNumberSecondarySetToNone: Bool? = nil,
            firstNameSetToNone: Bool? = nil,
            lastNameSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailAddressPrimary = emailAddressPrimary
            self.emailAddressSecondary = emailAddressSecondary
            self.phoneNumberPrimary = phoneNumberPrimary
            self.phoneNumberSecondary = phoneNumberSecondary
            self.firstName = firstName
            self.lastName = lastName
            self.vehicleTypes = vehicleTypes
            self.emailAddressPrimarySetToNone = emailAddressPrimarySetToNone
            self.emailAddressSecondarySetToNone = emailAddressSecondarySetToNone
            self.phoneNumberPrimarySetToNone = phoneNumberPrimarySetToNone
            self.phoneNumberSecondarySetToNone = phoneNumberSecondarySetToNone
            self.firstNameSetToNone = firstNameSetToNone
            self.lastNameSetToNone = lastNameSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
            self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
            self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
            self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.emailAddressPrimarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressPrimarySetToNone)
            self.emailAddressSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressSecondarySetToNone)
            self.phoneNumberPrimarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberPrimarySetToNone)
            self.phoneNumberSecondarySetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSecondarySetToNone)
            self.firstNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .firstNameSetToNone)
            self.lastNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .lastNameSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeIfPresent(self.firstName, forKey: .firstName)
            try container.encodeIfPresent(self.lastName, forKey: .lastName)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
            try container.encodeIfPresent(self.emailAddressPrimarySetToNone, forKey: .emailAddressPrimarySetToNone)
            try container.encodeIfPresent(self.emailAddressSecondarySetToNone, forKey: .emailAddressSecondarySetToNone)
            try container.encodeIfPresent(self.phoneNumberPrimarySetToNone, forKey: .phoneNumberPrimarySetToNone)
            try container.encodeIfPresent(self.phoneNumberSecondarySetToNone, forKey: .phoneNumberSecondarySetToNone)
            try container.encodeIfPresent(self.firstNameSetToNone, forKey: .firstNameSetToNone)
            try container.encodeIfPresent(self.lastNameSetToNone, forKey: .lastNameSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailAddressPrimary = "email_address_primary"
            case emailAddressSecondary = "email_address_secondary"
            case phoneNumberPrimary = "phone_number_primary"
            case phoneNumberSecondary = "phone_number_secondary"
            case firstName = "first_name"
            case lastName = "last_name"
            case vehicleTypes = "vehicle_types"
            case emailAddressPrimarySetToNone = "email_address_primary__set_to_None"
            case emailAddressSecondarySetToNone = "email_address_secondary__set_to_None"
            case phoneNumberPrimarySetToNone = "phone_number_primary__set_to_None"
            case phoneNumberSecondarySetToNone = "phone_number_secondary__set_to_None"
            case firstNameSetToNone = "first_name__set_to_None"
            case lastNameSetToNone = "last_name__set_to_None"
        }
    }
}