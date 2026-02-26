import Foundation

public struct LineItemGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let taskGroupId: String?
    public let rateSheetId: String?
    public let lineItems: [LineItem1]
    public let lineItemGroupS3ObjectMetadataIds: [String]?
    public let statementId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentVectorType: PaymentVectorTypeEnum1
    public let settlementType: SettlementTypeEnum1
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentDestinationDriverId: String?
    public let status: LineItemGroupStatusEnum1?
    public let messages: [LineItemGroupMessage1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        taskGroupId: String? = nil,
        rateSheetId: String? = nil,
        lineItems: [LineItem1],
        lineItemGroupS3ObjectMetadataIds: [String]? = nil,
        statementId: String? = nil,
        ownedByOrgId: String,
        paymentVectorType: PaymentVectorTypeEnum1,
        settlementType: SettlementTypeEnum1,
        paymentOriginOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentDestinationDriverId: String? = nil,
        status: LineItemGroupStatusEnum1? = nil,
        messages: [LineItemGroupMessage1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.taskGroupId = taskGroupId
        self.rateSheetId = rateSheetId
        self.lineItems = lineItems
        self.lineItemGroupS3ObjectMetadataIds = lineItemGroupS3ObjectMetadataIds
        self.statementId = statementId
        self.ownedByOrgId = ownedByOrgId
        self.paymentVectorType = paymentVectorType
        self.settlementType = settlementType
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.status = status
        self.messages = messages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.lineItemGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .lineItemGroupS3ObjectMetadataIds)
        self.statementId = try container.decodeIfPresent(String.self, forKey: .statementId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentVectorType = try container.decode(PaymentVectorTypeEnum1.self, forKey: .paymentVectorType)
        self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.status = try container.decodeIfPresent(LineItemGroupStatusEnum1.self, forKey: .status)
        self.messages = try container.decodeIfPresent([LineItemGroupMessage1].self, forKey: .messages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encodeIfPresent(self.lineItemGroupS3ObjectMetadataIds, forKey: .lineItemGroupS3ObjectMetadataIds)
        try container.encodeIfPresent(self.statementId, forKey: .statementId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.paymentVectorType, forKey: .paymentVectorType)
        try container.encode(self.settlementType, forKey: .settlementType)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.messages, forKey: .messages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case taskGroupId = "task_group_id"
        case rateSheetId = "rate_sheet_id"
        case lineItems = "line_items"
        case lineItemGroupS3ObjectMetadataIds = "line_item_group_s3_object_metadata_ids"
        case statementId = "statement_id"
        case ownedByOrgId = "owned_by_org_id"
        case paymentVectorType = "payment_vector_type"
        case settlementType = "settlement_type"
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case status
        case messages
    }
}