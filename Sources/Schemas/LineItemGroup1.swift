import Foundation

public struct LineItemGroup1: Codable, Hashable, Sendable {
    public let id: String
    public let lineItemGroupS3ObjectMetadataIds: [String]?
    public let lineItems: [LineItem1]
    public let messages: [LineItemGroupMessage1]?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentDestinationDriverId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentVectorType: PaymentVectorTypeEnum1
    public let rateSheetId: String?
    public let schemaVersion: Int
    public let settlementType: SettlementTypeEnum1
    public let statementId: String?
    public let status: LineItemGroupStatusEnum1?
    public let taskGroupId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        lineItemGroupS3ObjectMetadataIds: [String]? = nil,
        lineItems: [LineItem1],
        messages: [LineItemGroupMessage1]? = nil,
        ownedByOrgId: String,
        paymentDestinationDriverId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentOriginOrgId: String? = nil,
        paymentVectorType: PaymentVectorTypeEnum1,
        rateSheetId: String? = nil,
        schemaVersion: Int,
        settlementType: SettlementTypeEnum1,
        statementId: String? = nil,
        status: LineItemGroupStatusEnum1? = nil,
        taskGroupId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.lineItemGroupS3ObjectMetadataIds = lineItemGroupS3ObjectMetadataIds
        self.lineItems = lineItems
        self.messages = messages
        self.ownedByOrgId = ownedByOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentVectorType = paymentVectorType
        self.rateSheetId = rateSheetId
        self.schemaVersion = schemaVersion
        self.settlementType = settlementType
        self.statementId = statementId
        self.status = status
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.lineItemGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .lineItemGroupS3ObjectMetadataIds)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.messages = try container.decodeIfPresent([LineItemGroupMessage1].self, forKey: .messages)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentVectorType = try container.decode(PaymentVectorTypeEnum1.self, forKey: .paymentVectorType)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
        self.statementId = try container.decodeIfPresent(String.self, forKey: .statementId)
        self.status = try container.decodeIfPresent(LineItemGroupStatusEnum1.self, forKey: .status)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.lineItemGroupS3ObjectMetadataIds, forKey: .lineItemGroupS3ObjectMetadataIds)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encode(self.paymentVectorType, forKey: .paymentVectorType)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.settlementType, forKey: .settlementType)
        try container.encodeIfPresent(self.statementId, forKey: .statementId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case lineItemGroupS3ObjectMetadataIds = "line_item_group_s3_object_metadata_ids"
        case lineItems = "line_items"
        case messages
        case ownedByOrgId = "owned_by_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentVectorType = "payment_vector_type"
        case rateSheetId = "rate_sheet_id"
        case schemaVersion = "schema_version"
        case settlementType = "settlement_type"
        case statementId = "statement_id"
        case status
        case taskGroupId = "task_group_id"
    }
}