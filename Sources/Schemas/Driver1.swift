import Foundation

public struct Driver1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let active: Bool
    public let emailAddressPrimary: Nullable<String>?
    public let emailAddressSecondary: Nullable<String>?
    public let phoneNumberPrimary: Nullable<String>?
    public let phoneNumberSecondary: Nullable<String>?
    public let firstName: Nullable<String>?
    public let lastName: Nullable<String>?
    public let vehicleTypes: [VehicleTypeEnum]?
    public let status: DriverStatusEnum?
    public let lastSeenAtLocation: Nullable<LocationFeature>?
    public let lastSeenAtTimestamp: Nullable<Date>?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        active: Bool,
        emailAddressPrimary: Nullable<String>? = nil,
        emailAddressSecondary: Nullable<String>? = nil,
        phoneNumberPrimary: Nullable<String>? = nil,
        phoneNumberSecondary: Nullable<String>? = nil,
        firstName: Nullable<String>? = nil,
        lastName: Nullable<String>? = nil,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        status: DriverStatusEnum? = nil,
        lastSeenAtLocation: Nullable<LocationFeature>? = nil,
        lastSeenAtTimestamp: Nullable<Date>? = nil,
        id: String,
        orgId: String,
        userId: String,
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
        self.emailAddressPrimary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeNullableIfPresent(String.self, forKey: .emailAddressSecondary)
        self.phoneNumberPrimary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeNullableIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.firstName = try container.decodeNullableIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeNullableIfPresent(String.self, forKey: .lastName)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.status = try container.decodeIfPresent(DriverStatusEnum.self, forKey: .status)
        self.lastSeenAtLocation = try container.decodeNullableIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.active, forKey: .active)
        try container.encodeNullableIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeNullableIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeNullableIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeNullableIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encodeNullableIfPresent(self.firstName, forKey: .firstName)
        try container.encodeNullableIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeNullableIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeNullableIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.userId, forKey: .userId)
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