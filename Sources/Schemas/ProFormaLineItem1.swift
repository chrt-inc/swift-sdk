import Foundation

/// Read model. Embedded value-object — no `_id` of its own.
public struct ProFormaLineItem1: Codable, Hashable, Sendable {
    public let adjustment: Double?
    public let adjustmentComments: String?
    public let comments: String?
    public let createdAtTimestamp: Date?
    public let item: LineItemEnum1
    public let provenance: LineItemProvenanceEnum
    public let quantity: Double
    public let rate: Double
    public let rateSheetId: String?
    public let schemaVersion: Int?
    public let units: UnitsEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        adjustment: Double? = nil,
        adjustmentComments: String? = nil,
        comments: String? = nil,
        createdAtTimestamp: Date? = nil,
        item: LineItemEnum1,
        provenance: LineItemProvenanceEnum,
        quantity: Double,
        rate: Double,
        rateSheetId: String? = nil,
        schemaVersion: Int? = nil,
        units: UnitsEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.adjustment = adjustment
        self.adjustmentComments = adjustmentComments
        self.comments = comments
        self.createdAtTimestamp = createdAtTimestamp
        self.item = item
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
        self.adjustment = try container.decodeIfPresent(Double.self, forKey: .adjustment)
        self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.createdAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .createdAtTimestamp)
        self.item = try container.decode(LineItemEnum1.self, forKey: .item)
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
        try container.encodeIfPresent(self.adjustment, forKey: .adjustment)
        try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.item, forKey: .item)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.units, forKey: .units)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case adjustment
        case adjustmentComments = "adjustment_comments"
        case comments
        case createdAtTimestamp = "created_at_timestamp"
        case item
        case provenance
        case quantity
        case rate
        case rateSheetId = "rate_sheet_id"
        case schemaVersion = "schema_version"
        case units
    }
}