import Foundation

public struct Driver1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let emailAddressPrimary: String?
    public let emailAddressSecondary: String?
    public let phoneNumberPrimary: String?
    public let phoneNumberSecondary: String?
    public let firstName: String?
    public let lastName: String?
    public let vehicleTypes: [VehicleTypeEnum]?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    /// Must be a string starting with `user_`
    public let userId: String
    public let status: DriverStatusEnum?
    public let availableAccordingToDriver: Bool?
    public let availableAccordingToOperators: Bool?
    public let nonTerminalTaskGroupIds: [String]?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        emailAddressPrimary: String? = nil,
        emailAddressSecondary: String? = nil,
        phoneNumberPrimary: String? = nil,
        phoneNumberSecondary: String? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        id: String,
        orgId: String,
        userId: String,
        status: DriverStatusEnum? = nil,
        availableAccordingToDriver: Bool? = nil,
        availableAccordingToOperators: Bool? = nil,
        nonTerminalTaskGroupIds: [String]? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.emailAddressPrimary = emailAddressPrimary
        self.emailAddressSecondary = emailAddressSecondary
        self.phoneNumberPrimary = phoneNumberPrimary
        self.phoneNumberSecondary = phoneNumberSecondary
        self.firstName = firstName
        self.lastName = lastName
        self.vehicleTypes = vehicleTypes
        self.id = id
        self.orgId = orgId
        self.userId = userId
        self.status = status
        self.availableAccordingToDriver = availableAccordingToDriver
        self.availableAccordingToOperators = availableAccordingToOperators
        self.nonTerminalTaskGroupIds = nonTerminalTaskGroupIds
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
        self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.status = try container.decodeIfPresent(DriverStatusEnum.self, forKey: .status)
        self.availableAccordingToDriver = try container.decodeIfPresent(Bool.self, forKey: .availableAccordingToDriver)
        self.availableAccordingToOperators = try container.decodeIfPresent(Bool.self, forKey: .availableAccordingToOperators)
        self.nonTerminalTaskGroupIds = try container.decodeIfPresent([String].self, forKey: .nonTerminalTaskGroupIds)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.availableAccordingToDriver, forKey: .availableAccordingToDriver)
        try container.encodeIfPresent(self.availableAccordingToOperators, forKey: .availableAccordingToOperators)
        try container.encodeIfPresent(self.nonTerminalTaskGroupIds, forKey: .nonTerminalTaskGroupIds)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case emailAddressPrimary = "email_address_primary"
        case emailAddressSecondary = "email_address_secondary"
        case phoneNumberPrimary = "phone_number_primary"
        case phoneNumberSecondary = "phone_number_secondary"
        case firstName = "first_name"
        case lastName = "last_name"
        case vehicleTypes = "vehicle_types"
        case id = "_id"
        case orgId = "org_id"
        case userId = "user_id"
        case status
        case availableAccordingToDriver = "available_according_to_driver"
        case availableAccordingToOperators = "available_according_to_operators"
        case nonTerminalTaskGroupIds = "non_terminal_task_group_ids"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
    }
}