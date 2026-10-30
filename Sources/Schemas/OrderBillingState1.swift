import Foundation

public struct OrderBillingState1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let enabledSurchargeTypes: [OrderBillingSurchargeTypeEnum1]?
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let orderId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let rateSheetSelections: [RateSheetSelection1]?
    public let schemaVersion: Int
    public let unpricedReasons: [UnpricedReason1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        createdByUserId: String,
        enabledSurchargeTypes: [OrderBillingSurchargeTypeEnum1]? = nil,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        orderId: String,
        ownedByOrgId: String,
        rateSheetSelections: [RateSheetSelection1]? = nil,
        schemaVersion: Int,
        unpricedReasons: [UnpricedReason1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.enabledSurchargeTypes = enabledSurchargeTypes
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.orderId = orderId
        self.ownedByOrgId = ownedByOrgId
        self.rateSheetSelections = rateSheetSelections
        self.schemaVersion = schemaVersion
        self.unpricedReasons = unpricedReasons
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.enabledSurchargeTypes = try container.decodeIfPresent([OrderBillingSurchargeTypeEnum1].self, forKey: .enabledSurchargeTypes)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.rateSheetSelections = try container.decodeIfPresent([RateSheetSelection1].self, forKey: .rateSheetSelections)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.unpricedReasons = try container.decodeIfPresent([UnpricedReason1].self, forKey: .unpricedReasons)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.enabledSurchargeTypes, forKey: .enabledSurchargeTypes)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.rateSheetSelections, forKey: .rateSheetSelections)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.unpricedReasons, forKey: .unpricedReasons)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case enabledSurchargeTypes = "enabled_surcharge_types"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case orderId = "order_id"
        case ownedByOrgId = "owned_by_org_id"
        case rateSheetSelections = "rate_sheet_selections"
        case schemaVersion = "schema_version"
        case unpricedReasons = "unpriced_reasons"
    }
}