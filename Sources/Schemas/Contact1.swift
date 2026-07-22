import Foundation

public struct Contact1: Codable, Hashable, Sendable {
    public let id: String
    public let accountIds: [String]?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let emailAddress: String?
    public let jobTitle: String?
    public let location: LocationFeature?
    public let name: String
    public let notes: String?
    public let offChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let phoneNumber: String?
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        accountIds: [String]? = nil,
        createdByOrgId: String,
        emailAddress: String? = nil,
        jobTitle: String? = nil,
        location: LocationFeature? = nil,
        name: String,
        notes: String? = nil,
        offChrtOrgDataId: String? = nil,
        orgId: String? = nil,
        phoneNumber: String? = nil,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accountIds = accountIds
        self.createdByOrgId = createdByOrgId
        self.emailAddress = emailAddress
        self.jobTitle = jobTitle
        self.location = location
        self.name = name
        self.notes = notes
        self.offChrtOrgDataId = offChrtOrgDataId
        self.orgId = orgId
        self.phoneNumber = phoneNumber
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.accountIds = try container.decodeIfPresent([String].self, forKey: .accountIds)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.name = try container.decode(String.self, forKey: .name)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.offChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtOrgDataId)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.accountIds, forKey: .accountIds)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.offChrtOrgDataId, forKey: .offChrtOrgDataId)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case accountIds = "account_ids"
        case createdByOrgId = "created_by_org_id"
        case emailAddress = "email_address"
        case jobTitle = "job_title"
        case location
        case name
        case notes
        case offChrtOrgDataId = "off_chrt_org_data_id"
        case orgId = "org_id"
        case phoneNumber = "phone_number"
        case schemaVersion = "schema_version"
    }
}