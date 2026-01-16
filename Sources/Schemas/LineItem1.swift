import Foundation

public struct LineItem1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let item: LineItemEnum1
    public let quantity: Double
    public let rate: Double
    public let units: UnitsEnum?
    public let comments: String?
    public let adjustment: Double?
    public let adjustmentComments: String?
    public let createdAtTimestamp: Date?
    public let uuidStr: String?
    public let amount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        item: LineItemEnum1,
        quantity: Double,
        rate: Double,
        units: UnitsEnum? = nil,
        comments: String? = nil,
        adjustment: Double? = nil,
        adjustmentComments: String? = nil,
        createdAtTimestamp: Date? = nil,
        uuidStr: String? = nil,
        amount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.item = item
        self.quantity = quantity
        self.rate = rate
        self.units = units
        self.comments = comments
        self.adjustment = adjustment
        self.adjustmentComments = adjustmentComments
        self.createdAtTimestamp = createdAtTimestamp
        self.uuidStr = uuidStr
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.item = try container.decode(LineItemEnum1.self, forKey: .item)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.adjustment = try container.decodeIfPresent(Double.self, forKey: .adjustment)
        self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
        self.createdAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .createdAtTimestamp)
        self.uuidStr = try container.decodeIfPresent(String.self, forKey: .uuidStr)
        self.amount = try container.decode(Double.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.item, forKey: .item)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.units, forKey: .units)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.adjustment, forKey: .adjustment)
        try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
        try container.encodeIfPresent(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.uuidStr, forKey: .uuidStr)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case item
        case quantity
        case rate
        case units
        case comments
        case adjustment
        case adjustmentComments = "adjustment_comments"
        case createdAtTimestamp = "created_at_timestamp"
        case uuidStr = "uuid_str"
        case amount
    }
}