import Foundation

public struct Driver1: Codable, Hashable, Sendable {
    public let id: String
    public let activeTaskGroupIds: [String]?
    public let availableAccordingToDriver: Bool?
    public let availableAccordingToOperators: Bool?
    public let defaultRateSheetOnDemand: String?
    public let defaultRateSheetRouted: String?
    public let emailAddressPrimary: String?
    public let emailAddressSecondary: String?
    public let firstName: String?
    public let lastName: String?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let phoneNumberPrimary: String?
    public let phoneNumberSecondary: String?
    public let schemaVersion: Int
    public let status: DriverStatusEnum?
    /// Must be a string starting with `user_`
    public let userId: String
    public let vehicleTypes: [VehicleTypeEnum]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        activeTaskGroupIds: [String]? = nil,
        availableAccordingToDriver: Bool? = nil,
        availableAccordingToOperators: Bool? = nil,
        defaultRateSheetOnDemand: String? = nil,
        defaultRateSheetRouted: String? = nil,
        emailAddressPrimary: String? = nil,
        emailAddressSecondary: String? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtTimestamp: Date? = nil,
        orgId: String,
        phoneNumberPrimary: String? = nil,
        phoneNumberSecondary: String? = nil,
        schemaVersion: Int,
        status: DriverStatusEnum? = nil,
        userId: String,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.activeTaskGroupIds = activeTaskGroupIds
        self.availableAccordingToDriver = availableAccordingToDriver
        self.availableAccordingToOperators = availableAccordingToOperators
        self.defaultRateSheetOnDemand = defaultRateSheetOnDemand
        self.defaultRateSheetRouted = defaultRateSheetRouted
        self.emailAddressPrimary = emailAddressPrimary
        self.emailAddressSecondary = emailAddressSecondary
        self.firstName = firstName
        self.lastName = lastName
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.orgId = orgId
        self.phoneNumberPrimary = phoneNumberPrimary
        self.phoneNumberSecondary = phoneNumberSecondary
        self.schemaVersion = schemaVersion
        self.status = status
        self.userId = userId
        self.vehicleTypes = vehicleTypes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.activeTaskGroupIds = try container.decodeIfPresent([String].self, forKey: .activeTaskGroupIds)
        self.availableAccordingToDriver = try container.decodeIfPresent(Bool.self, forKey: .availableAccordingToDriver)
        self.availableAccordingToOperators = try container.decodeIfPresent(Bool.self, forKey: .availableAccordingToOperators)
        self.defaultRateSheetOnDemand = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetOnDemand)
        self.defaultRateSheetRouted = try container.decodeIfPresent(String.self, forKey: .defaultRateSheetRouted)
        self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
        self.emailAddressSecondary = try container.decodeIfPresent(String.self, forKey: .emailAddressSecondary)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.phoneNumberSecondary = try container.decodeIfPresent(String.self, forKey: .phoneNumberSecondary)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.status = try container.decodeIfPresent(DriverStatusEnum.self, forKey: .status)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.activeTaskGroupIds, forKey: .activeTaskGroupIds)
        try container.encodeIfPresent(self.availableAccordingToDriver, forKey: .availableAccordingToDriver)
        try container.encodeIfPresent(self.availableAccordingToOperators, forKey: .availableAccordingToOperators)
        try container.encodeIfPresent(self.defaultRateSheetOnDemand, forKey: .defaultRateSheetOnDemand)
        try container.encodeIfPresent(self.defaultRateSheetRouted, forKey: .defaultRateSheetRouted)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.emailAddressSecondary, forKey: .emailAddressSecondary)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.phoneNumberSecondary, forKey: .phoneNumberSecondary)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case activeTaskGroupIds = "active_task_group_ids"
        case availableAccordingToDriver = "available_according_to_driver"
        case availableAccordingToOperators = "available_according_to_operators"
        case defaultRateSheetOnDemand = "default_rate_sheet__on_demand"
        case defaultRateSheetRouted = "default_rate_sheet__routed"
        case emailAddressPrimary = "email_address_primary"
        case emailAddressSecondary = "email_address_secondary"
        case firstName = "first_name"
        case lastName = "last_name"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case orgId = "org_id"
        case phoneNumberPrimary = "phone_number_primary"
        case phoneNumberSecondary = "phone_number_secondary"
        case schemaVersion = "schema_version"
        case status
        case userId = "user_id"
        case vehicleTypes = "vehicle_types"
    }
}