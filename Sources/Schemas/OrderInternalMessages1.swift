import Foundation

public struct OrderInternalMessages1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAt: Date
    public let messages: [OrderInternalMessage1]?
    public let orderId: String
    public let orderInternalMessageS3ObjectMetadataIds: [String]?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAt: Date,
        messages: [OrderInternalMessage1]? = nil,
        orderId: String,
        orderInternalMessageS3ObjectMetadataIds: [String]? = nil,
        orgId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAt = createdAt
        self.messages = messages
        self.orderId = orderId
        self.orderInternalMessageS3ObjectMetadataIds = orderInternalMessageS3ObjectMetadataIds
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.messages = try container.decodeIfPresent([OrderInternalMessage1].self, forKey: .messages)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderInternalMessageS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .orderInternalMessageS3ObjectMetadataIds)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderInternalMessageS3ObjectMetadataIds, forKey: .orderInternalMessageS3ObjectMetadataIds)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAt = "created_at"
        case messages
        case orderId = "order_id"
        case orderInternalMessageS3ObjectMetadataIds = "order_internal_message_s3_object_metadata_ids"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
    }
}