import Foundation

public struct LineItem1: Codable, Hashable, Sendable {
    public let adjustment: Double?
    public let adjustmentComments: String?
    public let amount: Double
    public let comments: String?
    public let createdAtTimestamp: Date?
    public let item: LineItemEnum1
    public let quantity: Double
    public let rate: Double
    public let schemaVersion: Int?
    public let units: UnitsEnum?
    public let uuidStr: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        adjustment: Double? = nil,
        adjustmentComments: String? = nil,
        amount: Double,
        comments: String? = nil,
        createdAtTimestamp: Date? = nil,
        item: LineItemEnum1,
        quantity: Double,
        rate: Double,
        schemaVersion: Int? = nil,
        units: UnitsEnum? = nil,
        uuidStr: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.adjustment = adjustment
        self.adjustmentComments = adjustmentComments
        self.amount = amount
        self.comments = comments
        self.createdAtTimestamp = createdAtTimestamp
        self.item = item
        self.quantity = quantity
        self.rate = rate
        self.schemaVersion = schemaVersion
        self.units = units
        self.uuidStr = uuidStr
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.adjustment = try container.decodeIfPresent(Double.self, forKey: .adjustment)
        self.adjustmentComments = try container.decodeIfPresent(String.self, forKey: .adjustmentComments)
        self.amount = try container.decode(Double.self, forKey: .amount)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.createdAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .createdAtTimestamp)
        self.item = try container.decode(LineItemEnum1.self, forKey: .item)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.units = try container.decodeIfPresent(UnitsEnum.self, forKey: .units)
        self.uuidStr = try container.decodeIfPresent(String.self, forKey: .uuidStr)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.adjustment, forKey: .adjustment)
        try container.encodeIfPresent(self.adjustmentComments, forKey: .adjustmentComments)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.item, forKey: .item)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.units, forKey: .units)
        try container.encodeIfPresent(self.uuidStr, forKey: .uuidStr)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case adjustment
        case adjustmentComments = "adjustment_comments"
        case amount
        case comments
        case createdAtTimestamp = "created_at_timestamp"
        case item
        case quantity
        case rate
        case schemaVersion = "schema_version"
        case units
        case uuidStr = "uuid_str"
    }
}