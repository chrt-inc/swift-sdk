import Foundation

/// Read model. `amount_pre_adjustment` and `amount_post_adjustment` are derived
/// on instantiation from (quantity, rate, adjustment) and are never persisted — this
/// makes drift structurally impossible. Inserts must go through
/// `LineItemServerCreate1`, which does not expose these fields.
public struct LineItem1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let comments: String?
    public let item: LineItemEnum1
    public let units: UnitsEnum?
    public let rate: Double
    public let quantity: Double
    public let adjustment: Double?
    public let adjustmentComments: String?
    public let id: String
    public let provenance: LineItemProvenanceEnum
    /// Must be a string starting with `user_`
    public let adHocSubmittedByUserId: String?
    /// Must be a string starting with `org_`
    public let adHocSubmittedByOrgId: String?
    public let adHocStatus: LineItemStatusEnum?
    public let rateSheetId: String?
    public let proFormaBidThreadId: String?
    public let createdAtTimestamp: Date?
    public let lineItemS3ObjectMetadataIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        comments: String? = nil,
        item: LineItemEnum1,
        units: UnitsEnum? = nil,
        rate: Double,
        quantity: Double,
        adjustment: Double? = nil,
        adjustmentComments: String? = nil,
        id: String,
        provenance: LineItemProvenanceEnum,
        adHocSubmittedByUserId: String? = nil,
        adHocSubmittedByOrgId: String? = nil,
        adHocStatus: LineItemStatusEnum? = nil,
        rateSheetId: String? = nil,
        proFormaBidThreadId: String? = nil,
        createdAtTimestamp: Date? = nil,
        lineItemS3ObjectMetadataIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.comments = comments
        self.item = item
        self.units = units
        self.rate = rate
        self.quantity = quantity
        self.adjustment = adjustment
        self.adjustmentComments = adjustmentComments
        self.id = id
        self.provenance = provenance
        self.adHocSubmittedByUserId = adHocSubmittedByUserId
        self.adHocSubmittedByOrgId = adHocSubmittedByOrgId
        self.adHocStatus = adHocStatus
        self.rateSheetId = rateSheetId
        self.proFormaBidThreadId = proFormaBidThreadId
        self.createdAtTimestamp = createdAtTimestamp
        self.lineItemS3ObjectMetadataIds = lineItemS3ObjectMetadataIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.item = try container.decode(LineItemEnum1.self, forKey: .item)
        self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.adjustment = try container.decodeIfPresent(Double.self, forKey: .adjustment)
        self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
        self.id = try container.decode(String.self, forKey: .id)
        self.provenance = try container.decode(LineItemProvenanceEnum.self, forKey: .provenance)
        self.adHocSubmittedByUserId = try container.decodeIfPresent(String.self, forKey: .adHocSubmittedByUserId)
        self.adHocSubmittedByOrgId = try container.decodeIfPresent(String.self, forKey: .adHocSubmittedByOrgId)
        self.adHocStatus = try container.decodeIfPresent(LineItemStatusEnum.self, forKey: .adHocStatus)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.proFormaBidThreadId = try container.decodeIfPresent(String.self, forKey: .proFormaBidThreadId)
        self.createdAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .createdAtTimestamp)
        self.lineItemS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .lineItemS3ObjectMetadataIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encode(self.item, forKey: .item)
        try container.encodeIfPresent(self.units, forKey: .units)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.adjustment, forKey: .adjustment)
        try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encodeIfPresent(self.adHocSubmittedByUserId, forKey: .adHocSubmittedByUserId)
        try container.encodeIfPresent(self.adHocSubmittedByOrgId, forKey: .adHocSubmittedByOrgId)
        try container.encodeIfPresent(self.adHocStatus, forKey: .adHocStatus)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encodeIfPresent(self.proFormaBidThreadId, forKey: .proFormaBidThreadId)
        try container.encodeIfPresent(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.lineItemS3ObjectMetadataIds, forKey: .lineItemS3ObjectMetadataIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case comments
        case item
        case units
        case rate
        case quantity
        case adjustment
        case adjustmentComments = "adjustment_comments"
        case id = "_id"
        case provenance
        case adHocSubmittedByUserId = "ad_hoc__submitted_by_user_id"
        case adHocSubmittedByOrgId = "ad_hoc__submitted_by_org_id"
        case adHocStatus = "ad_hoc__status"
        case rateSheetId = "rate_sheet_id"
        case proFormaBidThreadId = "pro_forma__bid_thread_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lineItemS3ObjectMetadataIds = "line_item_s3_object_metadata_ids"
    }
}