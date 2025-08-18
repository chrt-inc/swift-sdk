import Foundation

public struct Driver1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let active: Bool
    public let emailAddressPrimary: JSONValue?
    public let emailAddressSecondary: JSONValue?
    public let phoneNumberPrimary: JSONValue?
    public let phoneNumberSecondary: JSONValue?
    public let firstName: JSONValue?
    public let lastName: JSONValue?
    public let vehicleTypes: [VehicleTypeEnum]?
    public let status: DriverStatusEnum?
    public let lastSeenAtLocation: JSONValue?
    public let lastSeenAtTimestamp: JSONValue?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: JSONValue?
    /// Must be a string starting with `user_`
    public let userId: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        active: Bool,
        emailAddressPrimary: JSONValue? = nil,
        emailAddressSecondary: JSONValue? = nil,
        phoneNumberPrimary: JSONValue? = nil,
        phoneNumberSecondary: JSONValue? = nil,
        firstName: JSONValue? = nil,
        lastName: JSONValue? = nil,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        status: DriverStatusEnum? = nil,
        lastSeenAtLocation: JSONValue? = nil,
        lastSeenAtTimestamp: JSONValue? = nil,
        id: String,
        orgId: JSONValue? = nil,
        userId: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.active = active
        self.emailAddressPrimary = emailAddressPrimary
        self.emailAddressSecondary = emailAddressSecondary
        self.phoneNumberPrimary = phoneNumberPrimary
        self.phoneNumberSecondary = phoneNumberSecondary
        self.firstName = firstName
        self.lastName = lastName
        self.vehicleTypes = vehicleTypes
        self.status = status
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.id = id
        self.orgId = orgId
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.active = try container.decode(Bool.self, forKey: .active)
        self.emailAddressPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .emailAddressSecondary)
        self.phoneNumberPrimary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(JSONValue.self, forKey: .phoneNumberSecondary)
        self.firstName = try container.decodeIfPresent(JSONValue.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(JSONValue.self, forKey: .lastName)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.status = try container.decodeIfPresent(DriverStatusEnum.self, forKey: .status)
        self.lastSeenAtLocation = try container.decodeIfPresent(JSONValue.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(JSONValue.self, forKey: .lastSeenAtTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decodeIfPresent(JSONValue.self, forKey: .orgId)
        self.userId = try container.decodeIfPresent(JSONValue.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.active, forKey: .active)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case active
        case emailAddressPrimary = "email_address_primary"
        case emailAddressSecondary = "email_address_secondary"
        case phoneNumberPrimary = "phone_number_primary"
        case phoneNumberSecondary = "phone_number_secondary"
        case firstName = "first_name"
        case lastName = "last_name"
        case vehicleTypes = "vehicle_types"
        case status
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case id = "_id"
        case orgId = "org_id"
        case userId = "user_id"
    }
}