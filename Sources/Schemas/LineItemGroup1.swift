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
    public let id: String
    public let agreementAmount: Double?
    public let agreementLineItemIds: [String]?
    public let amendmentAmount: Double?
    public let amendmentLineItemIds: [String]?
    public let deniedAmount: Double?
    public let deniedLineItemIds: [String]?
    public let finalizedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let finalizedByUserId: String?
    public let lineItemGroupS3ObjectMetadataIds: [String]?
    public let messages: [LineItemGroupMessage1]?
    public let orderGroupId: String?
    public let orderGroupShortId: String?
    public let orderId: String?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let orderShortId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentDestinationDriverId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    public let paymentDestinationOffChrtVendorId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let pendingAmount: Double?
    public let pendingLineItemIds: [String]?
    public let rateSheetId: String?
    public let schemaVersion: Int
    public let settlementType: SettlementTypeEnum1?
    public let statementId: String?
    public let status: LineItemGroupStatusEnum1?
    public let taskGroupId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        agreementAmount: Double? = nil,
        agreementLineItemIds: [String]? = nil,
        amendmentAmount: Double? = nil,
        amendmentLineItemIds: [String]? = nil,
        deniedAmount: Double? = nil,
        deniedLineItemIds: [String]? = nil,
        finalizedAtTimestamp: Date? = nil,
        finalizedByUserId: String? = nil,
        lineItemGroupS3ObjectMetadataIds: [String]? = nil,
        messages: [LineItemGroupMessage1]? = nil,
        orderGroupId: String? = nil,
        orderGroupShortId: String? = nil,
        orderId: String? = nil,
        orderOffChrtReferenceId: String? = nil,
        orderShortId: String? = nil,
        ownedByOrgId: String,
        paymentDestinationDriverId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationOffChrtVendorId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentOriginOrgId: String? = nil,
        pendingAmount: Double? = nil,
        pendingLineItemIds: [String]? = nil,
        rateSheetId: String? = nil,
        schemaVersion: Int,
        settlementType: SettlementTypeEnum1? = nil,
        statementId: String? = nil,
        status: LineItemGroupStatusEnum1? = nil,
        taskGroupId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.agreementAmount = agreementAmount
        self.agreementLineItemIds = agreementLineItemIds
        self.amendmentAmount = amendmentAmount
        self.amendmentLineItemIds = amendmentLineItemIds
        self.deniedAmount = deniedAmount
        self.deniedLineItemIds = deniedLineItemIds
        self.finalizedAtTimestamp = finalizedAtTimestamp
        self.finalizedByUserId = finalizedByUserId
        self.lineItemGroupS3ObjectMetadataIds = lineItemGroupS3ObjectMetadataIds
        self.messages = messages
        self.orderGroupId = orderGroupId
        self.orderGroupShortId = orderGroupShortId
        self.orderId = orderId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.orderShortId = orderShortId
        self.ownedByOrgId = ownedByOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationOffChrtVendorId = paymentDestinationOffChrtVendorId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.pendingAmount = pendingAmount
        self.pendingLineItemIds = pendingLineItemIds
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
        self.agreementAmount = try container.decodeIfPresent(Double.self, forKey: .agreementAmount)
        self.agreementLineItemIds = try container.decodeIfPresent([String].self, forKey: .agreementLineItemIds)
        self.amendmentAmount = try container.decodeIfPresent(Double.self, forKey: .amendmentAmount)
        self.amendmentLineItemIds = try container.decodeIfPresent([String].self, forKey: .amendmentLineItemIds)
        self.deniedAmount = try container.decodeIfPresent(Double.self, forKey: .deniedAmount)
        self.deniedLineItemIds = try container.decodeIfPresent([String].self, forKey: .deniedLineItemIds)
        self.finalizedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .finalizedAtTimestamp)
        self.finalizedByUserId = try container.decodeIfPresent(String.self, forKey: .finalizedByUserId)
        self.lineItemGroupS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .lineItemGroupS3ObjectMetadataIds)
        self.messages = try container.decodeIfPresent([LineItemGroupMessage1].self, forKey: .messages)
        self.orderGroupId = try container.decodeIfPresent(String.self, forKey: .orderGroupId)
        self.orderGroupShortId = try container.decodeIfPresent(String.self, forKey: .orderGroupShortId)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationOffChrtVendorId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtVendorId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.pendingAmount = try container.decodeIfPresent(Double.self, forKey: .pendingAmount)
        self.pendingLineItemIds = try container.decodeIfPresent([String].self, forKey: .pendingLineItemIds)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.settlementType = try container.decodeIfPresent(SettlementTypeEnum1.self, forKey: .settlementType)
        self.statementId = try container.decodeIfPresent(String.self, forKey: .statementId)
        self.status = try container.decodeIfPresent(LineItemGroupStatusEnum1.self, forKey: .status)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.agreementAmount, forKey: .agreementAmount)
        try container.encodeIfPresent(self.agreementLineItemIds, forKey: .agreementLineItemIds)
        try container.encodeIfPresent(self.amendmentAmount, forKey: .amendmentAmount)
        try container.encodeIfPresent(self.amendmentLineItemIds, forKey: .amendmentLineItemIds)
        try container.encodeIfPresent(self.deniedAmount, forKey: .deniedAmount)
        try container.encodeIfPresent(self.deniedLineItemIds, forKey: .deniedLineItemIds)
        try container.encodeIfPresent(self.finalizedAtTimestamp, forKey: .finalizedAtTimestamp)
        try container.encodeIfPresent(self.finalizedByUserId, forKey: .finalizedByUserId)
        try container.encodeIfPresent(self.lineItemGroupS3ObjectMetadataIds, forKey: .lineItemGroupS3ObjectMetadataIds)
        try container.encodeIfPresent(self.messages, forKey: .messages)
        try container.encodeIfPresent(self.orderGroupId, forKey: .orderGroupId)
        try container.encodeIfPresent(self.orderGroupShortId, forKey: .orderGroupShortId)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtVendorId, forKey: .paymentDestinationOffChrtVendorId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.pendingAmount, forKey: .pendingAmount)
        try container.encodeIfPresent(self.pendingLineItemIds, forKey: .pendingLineItemIds)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.settlementType, forKey: .settlementType)
        try container.encodeIfPresent(self.statementId, forKey: .statementId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case agreementAmount = "agreement_amount"
        case agreementLineItemIds = "agreement_line_item_ids"
        case amendmentAmount = "amendment_amount"
        case amendmentLineItemIds = "amendment_line_item_ids"
        case deniedAmount = "denied_amount"
        case deniedLineItemIds = "denied_line_item_ids"
        case finalizedAtTimestamp = "finalized_at_timestamp"
        case finalizedByUserId = "finalized_by_user_id"
        case lineItemGroupS3ObjectMetadataIds = "line_item_group_s3_object_metadata_ids"
        case messages
        case orderGroupId = "order_group_id"
        case orderGroupShortId = "order_group_short_id"
        case orderId = "order_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case orderShortId = "order_short_id"
        case ownedByOrgId = "owned_by_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationOffChrtVendorId = "payment_destination_off_chrt_vendor_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case pendingAmount = "pending_amount"
        case pendingLineItemIds = "pending_line_item_ids"
        case rateSheetId = "rate_sheet_id"
        case schemaVersion = "schema_version"
        case settlementType = "settlement_type"
        case statementId = "statement_id"
        case status
        case taskGroupId = "task_group_id"
    }
}