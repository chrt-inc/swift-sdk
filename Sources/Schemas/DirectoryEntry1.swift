import Foundation

public struct DirectoryEntry1: Codable, Hashable, Sendable {
    public let id: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let emailAddress: String?
    public let entryOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let entryOrgId: String?
    public let jobTitle: String?
    public let location: LocationFeature?
    public let name: String
    public let notes: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let phoneNumber: String?
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdByUserId: String,
        emailAddress: String? = nil,
        entryOffChrtOrgDataId: String? = nil,
        entryOrgId: String? = nil,
        jobTitle: String? = nil,
        location: LocationFeature? = nil,
        name: String,
        notes: String? = nil,
        ownedByOrgId: String,
        phoneNumber: String? = nil,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdByUserId = createdByUserId
        self.emailAddress = emailAddress
        self.entryOffChrtOrgDataId = entryOffChrtOrgDataId
        self.entryOrgId = entryOrgId
        self.jobTitle = jobTitle
        self.location = location
        self.name = name
        self.notes = notes
        self.ownedByOrgId = ownedByOrgId
        self.phoneNumber = phoneNumber
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.entryOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .entryOffChrtOrgDataId)
        self.entryOrgId = try container.decodeIfPresent(String.self, forKey: .entryOrgId)
        self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.name = try container.decode(String.self, forKey: .name)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.entryOffChrtOrgDataId, forKey: .entryOffChrtOrgDataId)
        try container.encodeIfPresent(self.entryOrgId, forKey: .entryOrgId)
        try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdByUserId = "created_by_user_id"
        case emailAddress = "email_address"
        case entryOffChrtOrgDataId = "entry_off_chrt_org_data_id"
        case entryOrgId = "entry_org_id"
        case jobTitle = "job_title"
        case location
        case name
        case notes
        case ownedByOrgId = "owned_by_org_id"
        case phoneNumber = "phone_number"
        case schemaVersion = "schema_version"
    }
}