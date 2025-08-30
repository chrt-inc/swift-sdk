import Foundation

public struct UserPublicData1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let primaryEmailAddress: JSONValue?
    public let userId: String
    public let customerId: JSONValue?
    public let notes: JSONValue?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        primaryEmailAddress: JSONValue? = nil,
        userId: String,
        customerId: JSONValue? = nil,
        notes: JSONValue? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.primaryEmailAddress = primaryEmailAddress
        self.userId = userId
        self.customerId = customerId
        self.notes = notes
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.primaryEmailAddress = try container.decodeIfPresent(JSONValue.self, forKey: .primaryEmailAddress)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.customerId = try container.decodeIfPresent(JSONValue.self, forKey: .customerId)
        self.notes = try container.decodeIfPresent(JSONValue.self, forKey: .notes)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case primaryEmailAddress = "primary_email_address"
        case userId = "user_id"
        case customerId = "customer_id"
        case notes
        case id = "_id"
    }
}