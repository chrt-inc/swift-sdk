import Foundation

public struct UnpricedReason1: Codable, Hashable, Sendable {
    public let code: UnpricedReasonCodeEnum1
    public let rateSheetId: String?
    public let relationshipType: BillingRelationshipTypeEnum1?
    public let ruleKey: String?
    public let taskGroupId: String?
    public let taskId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: UnpricedReasonCodeEnum1,
        rateSheetId: String? = nil,
        relationshipType: BillingRelationshipTypeEnum1? = nil,
        ruleKey: String? = nil,
        taskGroupId: String? = nil,
        taskId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.rateSheetId = rateSheetId
        self.relationshipType = relationshipType
        self.ruleKey = ruleKey
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(UnpricedReasonCodeEnum1.self, forKey: .code)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.relationshipType = try container.decodeIfPresent(BillingRelationshipTypeEnum1.self, forKey: .relationshipType)
        self.ruleKey = try container.decodeIfPresent(String.self, forKey: .ruleKey)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.taskId = try container.decodeIfPresent(String.self, forKey: .taskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encodeIfPresent(self.relationshipType, forKey: .relationshipType)
        try container.encodeIfPresent(self.ruleKey, forKey: .ruleKey)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.taskId, forKey: .taskId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case rateSheetId = "rate_sheet_id"
        case relationshipType = "relationship_type"
        case ruleKey = "rule_key"
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
    }
}