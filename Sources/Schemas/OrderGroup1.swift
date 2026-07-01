import Foundation

public struct OrderGroup1: Codable, Hashable, Sendable {
    public let id: String
    public let billingReviewStatus: BillingReviewStatusEnum?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let description: String?
    public let lastEditedAtTimestamp: Date
    public let name: String
    public let orderIds: [String]?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    public let shortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        billingReviewStatus: BillingReviewStatusEnum? = nil,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String,
        description: String? = nil,
        lastEditedAtTimestamp: Date,
        name: String,
        orderIds: [String]? = nil,
        ownedByOrgId: String,
        schemaVersion: Int,
        shortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.billingReviewStatus = billingReviewStatus
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.description = description
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.name = name
        self.orderIds = orderIds
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.shortId = shortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.billingReviewStatus = try container.decodeIfPresent(BillingReviewStatusEnum.self, forKey: .billingReviewStatus)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.orderIds = try container.decodeIfPresent([String].self, forKey: .orderIds)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.billingReviewStatus, forKey: .billingReviewStatus)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.orderIds, forKey: .orderIds)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shortId, forKey: .shortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case billingReviewStatus = "billing_review_status"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case description
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case name
        case orderIds = "order_ids"
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
        case shortId = "short_id"
    }
}