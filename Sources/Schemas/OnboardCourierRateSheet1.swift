import Foundation

public struct OnboardCourierRateSheet1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let archived: Bool?
    public let name: String?
    public let comments: String?
    public let dayRateUsd: Double?
    public let id: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        archived: Bool? = nil,
        name: String? = nil,
        comments: String? = nil,
        dayRateUsd: Double? = nil,
        id: String,
        ownedByOrgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.archived = archived
        self.name = name
        self.comments = comments
        self.dayRateUsd = dayRateUsd
        self.id = id
        self.ownedByOrgId = ownedByOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.dayRateUsd = try container.decodeIfPresent(Double.self, forKey: .dayRateUsd)
        self.id = try container.decode(String.self, forKey: .id)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.dayRateUsd, forKey: .dayRateUsd)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case archived
        case name
        case comments
        case dayRateUsd = "day_rate_usd"
        case id = "_id"
        case ownedByOrgId = "owned_by_org_id"
    }
}