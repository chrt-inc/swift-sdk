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
    public let taskGroupId: String
    public let rateSheetId: String
    /// Must be a string starting with `org_`
    public let rateSheetOwnedByOrgId: String
    public let lineItems: [LineItem1]
    public let totalAmount: Double
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    public let paymentDestinationDriverId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupId: String,
        rateSheetId: String,
        rateSheetOwnedByOrgId: String,
        lineItems: [LineItem1],
        totalAmount: Double,
        ownedByOrgId: String,
        paymentOriginOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationDriverId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupId = taskGroupId
        self.rateSheetId = rateSheetId
        self.rateSheetOwnedByOrgId = rateSheetOwnedByOrgId
        self.lineItems = lineItems
        self.totalAmount = totalAmount
        self.ownedByOrgId = ownedByOrgId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.rateSheetOwnedByOrgId = try container.decode(String.self, forKey: .rateSheetOwnedByOrgId)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.rateSheetOwnedByOrgId, forKey: .rateSheetOwnedByOrgId)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encode(self.totalAmount, forKey: .totalAmount)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupId = "task_group_id"
        case rateSheetId = "rate_sheet_id"
        case rateSheetOwnedByOrgId = "rate_sheet_owned_by_org_id"
        case lineItems = "line_items"
        case totalAmount = "total_amount"
        case ownedByOrgId = "owned_by_org_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
    }
}