import Foundation

/// Read model. `total_amount_agreement_and_amendment` and
/// `total_amount_agreement_and_amendment_and_pending` are derived on
/// instantiation from the four stored bucket amounts and are never
/// persisted — drift impossible. Inserts go through
/// `LineItemGroupServerCreate1`, which does not expose these fields.
/// Mirrors the `LineItem1` pattern (see `LineItem1.amount_pre_adjustment`).
/// 
/// Bucket amounts (`agreement_amount`, `amendment_amount`,
/// `pending_amount`, `denied_amount`) cannot be `@computed_field`s here
/// because they're sums over `LineItem1` docs in another collection;
/// they're kept in sync write-side by every mutation route that touches a
/// bucket id-array (see the "Amounts" section of the module docstring).
/// Default 0.0 — never None. The Statement-side rollup uses
/// `total_amount_agreement_and_amendment`.
/// 
/// NOTE: id is inherited from LineItemGroupServerCreate1 with alias="_id".
public struct LineItemGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let taskGroupId: String?
    public let orderId: String?
    public let orderShortId: String?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let rateSheetId: String?
    public let agreementLineItemIds: [String]?
    public let agreementAmount: Double?
    public let amendmentLineItemIds: [String]?
    public let amendmentAmount: Double?
    public let pendingLineItemIds: [String]?
    public let pendingAmount: Double?
    public let deniedLineItemIds: [String]?
    public let deniedAmount: Double?
    public let lineItemGroupS3ObjectMetadataIds: [String]?
    public let statementId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let settlementType: SettlementTypeEnum1?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    public let paymentDestinationDriverId: String?
    public let status: LineItemGroupStatusEnum1?
    public let finalizedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let finalizedByUserId: String?
    public let messages: [LineItemGroupMessage1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        taskGroupId: String? = nil,
        orderId: String? = nil,
        orderShortId: String? = nil,
        orderOffChrtReferenceId: String? = nil,
        rateSheetId: String? = nil,
        agreementLineItemIds: [String]? = nil,
        agreementAmount: Double? = nil,
        amendmentLineItemIds: [String]? = nil,
        amendmentAmount: Double? = nil,
        pendingLineItemIds: [String]? = nil,
        pendingAmount: Double? = nil,
        deniedLineItemIds: [String]? = nil,
        deniedAmount: Double? = nil,
        lineItemGroupS3ObjectMetadataIds: [String]? = nil,
        statementId: String? = nil,
        ownedByOrgId: String,
        settlementType: SettlementTypeEnum1? = nil,
        paymentOriginOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationDriverId: String? = nil,
        status: LineItemGroupStatusEnum1? = nil,
        finalizedAtTimestamp: Date? = nil,
        finalizedByUserId: String? = nil,
        messages: [LineItemGroupMessage1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.taskGroupId = taskGroupId
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.rateSheetId = rateSheetId
        self.agreementLineItemIds = agreementLineItemIds
        self.agreementAmount = agreementAmount
        self.amendmentLineItemIds = amendmentLineItemIds
        self.amendmentAmount = amendmentAmount
        self.pendingLineItemIds = pendingLineItemIds
        self.pendingAmount = pendingAmount
        self.deniedLineItemIds = deniedLineItemIds
        self.deniedAmount = deniedAmount
        self.lineItemGroupS3ObjectMetadataIds = lineItemGroupS3ObjectMetadataIds
        self.statementId = statementId
        self.ownedByOrgId = ownedByOrgId
        self.settlementType = settlementType
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.status = status
        self.finalizedAtTimestamp = finalizedAtTimestamp
        self.finalizedByUserId = finalizedByUserId
        self.messages = messages
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.agreementLineItemIds = try container.decodeIfPresent([String].self, forKey: .agreementLineItemIds)
        self.agreementAmount = try container.decodeIfPresent(Double.self, forKey: .agreementAmount)
        self.amendmentLineItemIds = try container.decodeIfPresent([String].self, forKey: .amendmentLineItemIds)
        self.amendmentAmount = try container.decodeIfPresent(Double.self, forKey: .amendmentAmount)
        self.pendingLineItemIds = try container.decodeIfPresent([String].self, forKey: .pendingLineItemIds)
        self.pendingAmount = try container.decodeIfPresent(Double.self, forKey: .pendingAmount)
        self.deniedLineItemIds = try container.decodeIfPresent([String].self, forKey: .deniedLineItemIds)
        self.deniedAmount = try container.decodeIfPresent(Double.self, forKey: .deniedAmount)
        self.lineItemGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .lineItemGroupS3ObjectMetadataIds)
        self.statementId = try container.decodeIfPresent(String.self, forKey: .statementId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.settlementType = try container.decodeIfPresent(SettlementTypeEnum1.self, forKey: .settlementType)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.status = try container.decodeIfPresent(LineItemGroupStatusEnum1.self, forKey: .status)
        self.finalizedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .finalizedAtTimestamp)
        self.finalizedByUserId = try container.decodeIfPresent(String.self, forKey: .finalizedByUserId)
        self.messages = try container.decodeIfPresent([LineItemGroupMessage1].self, forKey: .messages)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encodeIfPresent(self.agreementLineItemIds, forKey: .agreementLineItemIds)
        try container.encodeIfPresent(self.agreementAmount, forKey: .agreementAmount)
        try container.encodeIfPresent(self.amendmentLineItemIds, forKey: .amendmentLineItemIds)
        try container.encodeIfPresent(self.amendmentAmount, forKey: .amendmentAmount)
        try container.encodeIfPresent(self.pendingLineItemIds, forKey: .pendingLineItemIds)
        try container.encodeIfPresent(self.pendingAmount, forKey: .pendingAmount)
        try container.encodeIfPresent(self.deniedLineItemIds, forKey: .deniedLineItemIds)
        try container.encodeIfPresent(self.deniedAmount, forKey: .deniedAmount)
        try container.encodeIfPresent(self.lineItemGroupS3ObjectMetadataIds, forKey: .lineItemGroupS3ObjectMetadataIds)
        try container.encodeIfPresent(self.statementId, forKey: .statementId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.settlementType, forKey: .settlementType)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.finalizedAtTimestamp, forKey: .finalizedAtTimestamp)
        try container.encodeIfPresent(self.finalizedByUserId, forKey: .finalizedByUserId)
        try container.encodeIfPresent(self.messages, forKey: .messages)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case taskGroupId = "task_group_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case rateSheetId = "rate_sheet_id"
        case agreementLineItemIds = "agreement_line_item_ids"
        case agreementAmount = "agreement_amount"
        case amendmentLineItemIds = "amendment_line_item_ids"
        case amendmentAmount = "amendment_amount"
        case pendingLineItemIds = "pending_line_item_ids"
        case pendingAmount = "pending_amount"
        case deniedLineItemIds = "denied_line_item_ids"
        case deniedAmount = "denied_amount"
        case lineItemGroupS3ObjectMetadataIds = "line_item_group_s3_object_metadata_ids"
        case statementId = "statement_id"
        case ownedByOrgId = "owned_by_org_id"
        case settlementType = "settlement_type"
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case status
        case finalizedAtTimestamp = "finalized_at_timestamp"
        case finalizedByUserId = "finalized_by_user_id"
        case messages
    }
}