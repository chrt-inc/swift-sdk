import Foundation

/// Preview of a rate-sheet materialization for a TaskGroup vector.
/// 
/// Contains the resolved rate sheet's id + owner, the materialized line
/// items (with `_id`s minted in memory but NOT inserted into MongoDB), the
/// pre-adjustment total, and the derived parties so the operator can
/// verify before committing. To commit, call
/// `POST /billing/line_item_groups/from_rate_sheet/create_for_<vector>/v1`
/// with the same `(task_group_id, rate_sheet_id)` and then
/// `POST /shipping/task_groups/attach_lig_to_<vector>/v1/{tg_id}`.
/// 
/// `vector` is implicit in the URL of the quote route the operator
/// called and is NOT echoed back here — the response is parties-derived
/// (origin / destination / owner) and rate-sheet-driven, with no
/// redundant tag.
public struct TaskGroupQuoteResp: Codable, Hashable, Sendable {
    public let lineItems: [LineItem1]
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentDestinationDriverId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let rateSheetId: String
    /// Must be a string starting with `org_`
    public let rateSheetOwnedByOrgId: String
    public let taskGroupId: String
    public let totalAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lineItems: [LineItem1],
        ownedByOrgId: String,
        paymentDestinationDriverId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentOriginOrgId: String? = nil,
        rateSheetId: String,
        rateSheetOwnedByOrgId: String,
        taskGroupId: String,
        totalAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lineItems = lineItems
        self.ownedByOrgId = ownedByOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.rateSheetId = rateSheetId
        self.rateSheetOwnedByOrgId = rateSheetOwnedByOrgId
        self.taskGroupId = taskGroupId
        self.totalAmount = totalAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.rateSheetOwnedByOrgId = try container.decode(String.self, forKey: .rateSheetOwnedByOrgId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.rateSheetOwnedByOrgId, forKey: .rateSheetOwnedByOrgId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.totalAmount, forKey: .totalAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lineItems = "line_items"
        case ownedByOrgId = "owned_by_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case rateSheetId = "rate_sheet_id"
        case rateSheetOwnedByOrgId = "rate_sheet_owned_by_org_id"
        case taskGroupId = "task_group_id"
        case totalAmount = "total_amount"
    }
}