import Foundation

public struct LineItemClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let comments: String?
    public let item: LineItemEnum1
    public let units: UnitsEnum?
    public let rate: Double
    public let quantity: Double
    public let adjustment: Double?
    public let adjustmentComments: String?
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
    }
}