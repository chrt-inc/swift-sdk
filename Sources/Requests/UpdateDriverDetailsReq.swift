import Foundation

public struct UpdateDriverDetailsReq: Codable, Hashable, Sendable {
    public let driverObjectId: String
    public let emailAddressPrimary: JSONValue?
    public let emailAddressSecondary: JSONValue?
    public let phoneNumberPrimary: JSONValue?
    public let phoneNumberSecondary: JSONValue?
    public let vehicleTypes: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driverObjectId: String,
        emailAddressPrimary: JSONValue? = nil,
        emailAddressSecondary: JSONValue? = nil,
        phoneNumberPrimary: JSONValue? = nil,
        phoneNumberSecondary: JSONValue? = nil,
        vehicleTypes: JSONValue? = nil,
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
        self.emailAddressPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressSecondary)
        self.phoneNumberPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberSecondary)
        self.vehicleTypes = try container.decodeIfPresent(JSONValue.self, forKey: .vehicleTypes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.driverObjectId, forKey: .driverObjectId)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
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