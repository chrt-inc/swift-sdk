import Foundation

public struct OrderGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let name: String
    public let description: String?
    public let id: String
    public let shortId: String
    public let orderIds: [String]?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let billingReviewStatus: BillingReviewStatusEnum?
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        name: String,
        description: String? = nil,
        id: String,
        shortId: String,
        orderIds: [String]? = nil,
        ownedByOrgId: String,
        billingReviewStatus: BillingReviewStatusEnum? = nil,
        createdByUserId: String,
        createdByOrgId: String,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.name = name
        self.description = description
        self.id = id
        self.shortId = shortId
        self.orderIds = orderIds
        self.ownedByOrgId = ownedByOrgId
        self.billingReviewStatus = billingReviewStatus
        self.createdByUserId = createdByUserId
        self.createdByOrgId = createdByOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.name = try container.decode(String.self, forKey: .name)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.id = try container.decode(String.self, forKey: .id)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.orderIds = try container.decodeIfPresent([String].self, forKey: .orderIds)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.billingReviewStatus = try container.decodeIfPresent(BillingReviewStatusEnum.self, forKey: .billingReviewStatus)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.orderIds, forKey: .orderIds)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.billingReviewStatus, forKey: .billingReviewStatus)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case name
        case description
        case id = "_id"
        case shortId = "short_id"
        case orderIds = "order_ids"
        case ownedByOrgId = "owned_by_org_id"
        case billingReviewStatus = "billing_review_status"
        case createdByUserId = "created_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
    }
}