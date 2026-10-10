import Foundation

public struct ChrtGptConversation1: Codable, Hashable, Sendable {
    public let id: String
    public let awbNumbers: [String]?
    public let contextTokens: Int?
    public let createdAt: Date
    public let offChrtReferenceIds: [String]?
    public let orderShortIds: [String]?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let summarizedTurnCount: Int?
    public let summary: String?
    public let title: String
    public let titleSource: ChrtGptConversationTitleSourceEnum1
    public let updatedAt: Date
    /// Must be a string starting with `user_`
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumbers: [String]? = nil,
        contextTokens: Int? = nil,
        createdAt: Date,
        offChrtReferenceIds: [String]? = nil,
        orderShortIds: [String]? = nil,
        orgId: String,
        schemaVersion: Int,
        summarizedTurnCount: Int? = nil,
        summary: String? = nil,
        title: String,
        titleSource: ChrtGptConversationTitleSourceEnum1,
        updatedAt: Date,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumbers = awbNumbers
        self.contextTokens = contextTokens
        self.createdAt = createdAt
        self.offChrtReferenceIds = offChrtReferenceIds
        self.orderShortIds = orderShortIds
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.summarizedTurnCount = summarizedTurnCount
        self.summary = summary
        self.title = title
        self.titleSource = titleSource
        self.updatedAt = updatedAt
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.contextTokens = try container.decodeIfPresent(Int.self, forKey: .contextTokens)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.offChrtReferenceIds = try container.decodeIfPresent([String].self, forKey: .offChrtReferenceIds)
        self.orderShortIds = try container.decodeIfPresent([String].self, forKey: .orderShortIds)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.summarizedTurnCount = try container.decodeIfPresent(Int.self, forKey: .summarizedTurnCount)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.title = try container.decode(String.self, forKey: .title)
        self.titleSource = try container.decode(ChrtGptConversationTitleSourceEnum1.self, forKey: .titleSource)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.contextTokens, forKey: .contextTokens)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.offChrtReferenceIds, forKey: .offChrtReferenceIds)
        try container.encodeIfPresent(self.orderShortIds, forKey: .orderShortIds)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.summarizedTurnCount, forKey: .summarizedTurnCount)
        try container.encodeIfPresent(self.summary, forKey: .summary)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.titleSource, forKey: .titleSource)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumbers = "awb_numbers"
        case contextTokens = "context_tokens"
        case createdAt = "created_at"
        case offChrtReferenceIds = "off_chrt_reference_ids"
        case orderShortIds = "order_short_ids"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case summarizedTurnCount = "summarized_turn_count"
        case summary
        case title
        case titleSource = "title_source"
        case updatedAt = "updated_at"
        case userId = "user_id"
    }
}