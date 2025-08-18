import Foundation

public struct UserPublicData6: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let createdAt: Date
    public let lastEdited: Date
    public let courierProfileIsPublic: Bool
    public let userId: String
    public let customerId: JSONValue?
    public let primaryEmailAddress: JSONValue?
    public let notes: JSONValue?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        createdAt: Date,
        lastEdited: Date,
        courierProfileIsPublic: Bool,
        userId: String,
        customerId: JSONValue? = nil,
        primaryEmailAddress: JSONValue? = nil,
        notes: JSONValue? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.createdAt = createdAt
        self.lastEdited = lastEdited
        self.courierProfileIsPublic = courierProfileIsPublic
        self.userId = userId
        self.customerId = customerId
        self.primaryEmailAddress = primaryEmailAddress
        self.notes = notes
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.lastEdited = try container.decode(Date.self, forKey: .lastEdited)
        self.courierProfileIsPublic = try container.decode(Bool.self, forKey: .courierProfileIsPublic)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.customerId = try container.decodeIfPresent(JSONValue.self, forKey: .customerId)
        self.primaryEmailAddress = try container.decodeIfPresent(JSONValue.self, forKey: .primaryEmailAddress)
        self.notes = try container.decodeIfPresent(JSONValue.self, forKey: .notes)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.lastEdited, forKey: .lastEdited)
        try container.encode(self.courierProfileIsPublic, forKey: .courierProfileIsPublic)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case createdAt = "created_at"
        case lastEdited = "last_edited"
        case courierProfileIsPublic = "courier_profile_is_public"
        case userId = "user_id"
        case customerId = "customer_id"
        case primaryEmailAddress = "primary_email_address"
        case notes
        case id = "_id"
    }
}