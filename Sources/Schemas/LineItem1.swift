import Foundation

public struct LineItem1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let item: LineItemEnum1
    public let quantity: Double
    public let rate: Double
    public let comment: JSONValue?
    public let createdAt: Date
    public let uuidStr: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        item: LineItemEnum1,
        quantity: Double,
        rate: Double,
        comment: JSONValue? = nil,
        createdAt: Date,
        uuidStr: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.item = item
        self.quantity = quantity
        self.rate = rate
        self.comment = comment
        self.createdAt = createdAt
        self.uuidStr = uuidStr
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.item = try container.decode(LineItemEnum1.self, forKey: .item)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.comment = try container.decodeIfPresent(JSONValue.self, forKey: .comment)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.uuidStr = try container.decode(String.self, forKey: .uuidStr)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.item, forKey: .item)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.comment, forKey: .comment)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.uuidStr, forKey: .uuidStr)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case item
        case quantity
        case rate
        case comment
        case createdAt = "created_at"
        case uuidStr = "uuid_str"
    }
}