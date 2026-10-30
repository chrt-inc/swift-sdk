import Foundation

public struct OrderBillingEstimate1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let lineItems: [OrderBillingEstimateLineItem1]?
    public let orderId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        createdByUserId: String,
        lineItems: [OrderBillingEstimateLineItem1]? = nil,
        orderId: String,
        ownedByOrgId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.lineItems = lineItems
        self.orderId = orderId
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.lineItems = try container.decodeIfPresent([OrderBillingEstimateLineItem1].self, forKey: .lineItems)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case lineItems = "line_items"
        case orderId = "order_id"
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
    }
}