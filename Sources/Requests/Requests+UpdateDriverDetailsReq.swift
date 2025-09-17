import Foundation

extension Requests {
    public struct UpdateDriverDetailsReq: Codable, Hashable, Sendable {
        public let driverObjectId: String
        public let emailAddressPrimary: Nullable<String>?
        public let emailAddressSecondary: Nullable<String>?
        public let phoneNumberPrimary: Nullable<String>?
        public let phoneNumberSecondary: Nullable<String>?
        public let vehicleTypes: Nullable<[VehicleTypeEnum]>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            driverObjectId: String,
            emailAddressPrimary: Nullable<String>? = nil,
            emailAddressSecondary: Nullable<String>? = nil,
            phoneNumberPrimary: Nullable<String>? = nil,
            phoneNumberSecondary: Nullable<String>? = nil,
            vehicleTypes: Nullable<[VehicleTypeEnum]>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.driverObjectId = driverObjectId
            self.emailAddressPrimary = emailAddressPrimary
            self.emailAddressSecondary = emailAddressSecondary
            self.phoneNumberPrimary = phoneNumberPrimary
            self.phoneNumberSecondary = phoneNumberSecondary
            self.vehicleTypes = vehicleTypes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.driverObjectId = try container.decode(String.self, forKey: .driverObjectId)
            self.emailAddressPrimary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressPrimary)
            self.emailAddressSecondary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressSecondary)
            self.phoneNumberPrimary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberPrimary)
            self.phoneNumberSecondary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberSecondary)
            self.vehicleTypes = try container.decodeNullableIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.driverObjectId, forKey: .driverObjectId)
            try container.encodeNullableIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
            try container.encodeNullableIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
            try container.encodeNullableIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
            try container.encodeNullableIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
            try container.encodeNullableIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case driverObjectId = "driver_object_id"
            case emailAddressPrimary = "email_address_primary"
            case emailAddressSecondary = "email_address_secondary"
            case phoneNumberPrimary = "phone_number_primary"
            case phoneNumberSecondary = "phone_number_secondary"
            case vehicleTypes = "vehicle_types"
        }
    }
}