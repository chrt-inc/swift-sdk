import Foundation

public struct ProviderOnAndOffChrtExecutorListItem: Codable, Hashable, Sendable {
    public let autoAssignEnabled: Bool?
    public let connectionId: String?
    public let contactFirstName: String?
    public let contactLastName: String?
    public let displayName: String?
    public let distanceMeters: Double?
    public let emailAddressPrimary: String?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let executorSource: ProviderOnAndOffChrtExecutorSourceEnum
    public let industry: String?
    public let offChrtExecutorOrgId: String?
    public let phoneNumberPrimary: String?
    public let streetAddress: LocationFeature?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        autoAssignEnabled: Bool? = nil,
        connectionId: String? = nil,
        contactFirstName: String? = nil,
        contactLastName: String? = nil,
        displayName: String? = nil,
        distanceMeters: Double? = nil,
        emailAddressPrimary: String? = nil,
        executorOrgId: String? = nil,
        executorSource: ProviderOnAndOffChrtExecutorSourceEnum,
        industry: String? = nil,
        offChrtExecutorOrgId: String? = nil,
        phoneNumberPrimary: String? = nil,
        streetAddress: LocationFeature? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.autoAssignEnabled = autoAssignEnabled
        self.connectionId = connectionId
        self.contactFirstName = contactFirstName
        self.contactLastName = contactLastName
        self.displayName = displayName
        self.distanceMeters = distanceMeters
        self.emailAddressPrimary = emailAddressPrimary
        self.executorOrgId = executorOrgId
        self.executorSource = executorSource
        self.industry = industry
        self.offChrtExecutorOrgId = offChrtExecutorOrgId
        self.phoneNumberPrimary = phoneNumberPrimary
        self.streetAddress = streetAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.autoAssignEnabled = try container.decodeIfPresent(Bool.self, forKey: .autoAssignEnabled)
        self.connectionId = try container.decodeIfPresent(String.self, forKey: .connectionId)
        self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
        self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
        self.displayName = try container.decodeIfPresent(String.self, forKey: .displayName)
        self.distanceMeters = try container.decodeIfPresent(Double.self, forKey: .distanceMeters)
        self.emailAddressPrimary = try container.decodeIfPresent(String.self, forKey: .emailAddressPrimary)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.executorSource = try container.decode(ProviderOnAndOffChrtExecutorSourceEnum.self, forKey: .executorSource)
        self.industry = try container.decodeIfPresent(String.self, forKey: .industry)
        self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
        self.phoneNumberPrimary = try container.decodeIfPresent(String.self, forKey: .phoneNumberPrimary)
        self.streetAddress = try container.decodeIfPresent(LocationFeature.self, forKey: .streetAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.autoAssignEnabled, forKey: .autoAssignEnabled)
        try container.encodeIfPresent(self.connectionId, forKey: .connectionId)
        try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
        try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
        try container.encodeIfPresent(self.displayName, forKey: .displayName)
        try container.encodeIfPresent(self.distanceMeters, forKey: .distanceMeters)
        try container.encodeIfPresent(self.emailAddressPrimary, forKey: .emailAddressPrimary)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encode(self.executorSource, forKey: .executorSource)
        try container.encodeIfPresent(self.industry, forKey: .industry)
        try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
        try container.encodeIfPresent(self.phoneNumberPrimary, forKey: .phoneNumberPrimary)
        try container.encodeIfPresent(self.streetAddress, forKey: .streetAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case autoAssignEnabled = "auto_assign_enabled"
        case connectionId = "connection_id"
        case contactFirstName = "contact_first_name"
        case contactLastName = "contact_last_name"
        case displayName = "display_name"
        case distanceMeters = "distance_meters"
        case emailAddressPrimary = "email_address_primary"
        case executorOrgId = "executor_org_id"
        case executorSource = "executor_source"
        case industry
        case offChrtExecutorOrgId = "off_chrt_executor_org_id"
        case phoneNumberPrimary = "phone_number_primary"
        case streetAddress = "street_address"
    }
}