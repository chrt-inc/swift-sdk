import Foundation

/// A relationship priced by an accepted bid or fixed quote instead of a rate sheet.
public struct OrderAgreedPrice1: Codable, Hashable, Sendable {
    public let bidThreadId: String?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let orderBillingQuoteId: String?
    public let relationshipType: BillingRelationshipTypeEnum1
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bidThreadId: String? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        orderBillingQuoteId: String? = nil,
        relationshipType: BillingRelationshipTypeEnum1,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bidThreadId = bidThreadId
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.orderBillingQuoteId = orderBillingQuoteId
        self.relationshipType = relationshipType
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bidThreadId = try container.decodeIfPresent(String.self, forKey: .bidThreadId)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.orderBillingQuoteId = try container.decodeIfPresent(String.self, forKey: .orderBillingQuoteId)
        self.relationshipType = try container.decode(BillingRelationshipTypeEnum1.self, forKey: .relationshipType)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bidThreadId, forKey: .bidThreadId)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encodeIfPresent(self.orderBillingQuoteId, forKey: .orderBillingQuoteId)
        try container.encode(self.relationshipType, forKey: .relationshipType)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bidThreadId = "bid_thread_id"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case orderBillingQuoteId = "order_billing_quote_id"
        case relationshipType = "relationship_type"
        case taskGroupId = "task_group_id"
    }
}