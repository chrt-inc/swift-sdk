import Foundation

/// Read model. `amount_pre_adjustment` and `amount_post_adjustment` are derived
/// on instantiation from (quantity, rate, adjustment) and are never persisted — this
/// makes drift structurally impossible. Inserts must go through
/// `LineItemServerCreate1`, which does not expose these fields.
public struct LineItem1: Codable, Hashable, Sendable {
    public let id: String
    public let adHocStatus: LineItemStatusEnum?
    /// Must be a string starting with `org_`
    public let adHocSubmittedByOrgId: String?
    /// Must be a string starting with `user_`
    public let adHocSubmittedByUserId: String?
    public let adjustment: Double?
    public let adjustmentComments: String?
    public let comments: String?
    public let createdAtTimestamp: Date?
    public let item: LineItemEnum1
    public let lineItemCalculationId: String?
    public let lineItemS3ObjectMetadataIds: [String]?
    public let proFormaBidThreadId: String?
    public let provenance: LineItemProvenanceEnum
    public let quantity: Double
    public let rate: Double
    public let rateSheetId: String?
    public let schemaVersion: Int?
    public let units: UnitsEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        adHocStatus: LineItemStatusEnum? = nil,
        adHocSubmittedByOrgId: String? = nil,
        adHocSubmittedByUserId: String? = nil,
        adjustment: Double? = nil,
        adjustmentComments: String? = nil,
        comments: String? = nil,
        createdAtTimestamp: Date? = nil,
        item: LineItemEnum1,
        lineItemCalculationId: String? = nil,
        lineItemS3ObjectMetadataIds: [String]? = nil,
        proFormaBidThreadId: String? = nil,
        provenance: LineItemProvenanceEnum,
        quantity: Double,
        rate: Double,
        rateSheetId: String? = nil,
        schemaVersion: Int? = nil,
        units: UnitsEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.adHocStatus = adHocStatus
        self.adHocSubmittedByOrgId = adHocSubmittedByOrgId
        self.adHocSubmittedByUserId = adHocSubmittedByUserId
        self.adjustment = adjustment
        self.adjustmentComments = adjustmentComments
        self.comments = comments
        self.createdAtTimestamp = createdAtTimestamp
        self.item = item
        self.lineItemCalculationId = lineItemCalculationId
        self.lineItemS3ObjectMetadataIds = lineItemS3ObjectMetadataIds
        self.proFormaBidThreadId = proFormaBidThreadId
        self.provenance = provenance
        self.quantity = quantity
        self.rate = rate
        self.rateSheetId = rateSheetId
        self.schemaVersion = schemaVersion
        self.units = units
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.adHocStatus = try container.decodeIfPresent(LineItemStatusEnum.self, forKey: .adHocStatus)
        self.adHocSubmittedByOrgId = try container.decodeIfPresent(String.self, forKey: .adHocSubmittedByOrgId)
        self.adHocSubmittedByUserId = try container.decodeIfPresent(String.self, forKey: .adHocSubmittedByUserId)
        self.adjustment = try container.decodeIfPresent(Double.self, forKey: .adjustment)
        self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.createdAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .createdAtTimestamp)
        self.item = try container.decode(LineItemEnum1.self, forKey: .item)
        self.lineItemCalculationId = try container.decodeIfPresent(String.self, forKey: .lineItemCalculationId)
        self.lineItemS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .lineItemS3ObjectMetadataIds)
        self.proFormaBidThreadId = try container.decodeIfPresent(String.self, forKey: .proFormaBidThreadId)
        self.provenance = try container.decode(LineItemProvenanceEnum.self, forKey: .provenance)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.adHocStatus, forKey: .adHocStatus)
        try container.encodeIfPresent(self.adHocSubmittedByOrgId, forKey: .adHocSubmittedByOrgId)
        try container.encodeIfPresent(self.adHocSubmittedByUserId, forKey: .adHocSubmittedByUserId)
        try container.encodeIfPresent(self.adjustment, forKey: .adjustment)
        try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.item, forKey: .item)
        try container.encodeIfPresent(self.lineItemCalculationId, forKey: .lineItemCalculationId)
        try container.encodeIfPresent(self.lineItemS3ObjectMetadataIds, forKey: .lineItemS3ObjectMetadataIds)
        try container.encodeIfPresent(self.proFormaBidThreadId, forKey: .proFormaBidThreadId)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.units, forKey: .units)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case adHocStatus = "ad_hoc__status"
        case adHocSubmittedByOrgId = "ad_hoc__submitted_by_org_id"
        case adHocSubmittedByUserId = "ad_hoc__submitted_by_user_id"
        case adjustment
        case adjustmentComments = "adjustment_comments"
        case comments
        case createdAtTimestamp = "created_at_timestamp"
        case item
        case lineItemCalculationId = "line_item_calculation_id"
        case lineItemS3ObjectMetadataIds = "line_item_s3_object_metadata_ids"
        case proFormaBidThreadId = "pro_forma__bid_thread_id"
        case provenance
        case quantity
        case rate
        case rateSheetId = "rate_sheet_id"
        case schemaVersion = "schema_version"
        case units
    }
}