import Foundation

public struct Expense1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let amountUsd: Double
    public let docsS3ShortKey: JSONValue?
    public let vendor: String
    public let lineItemType: LineItemEnum1
    public let comments: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        amountUsd: Double,
        docsS3ShortKey: JSONValue? = nil,
        vendor: String,
        lineItemType: LineItemEnum1,
        comments: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.amountUsd = amountUsd
        self.docsS3ShortKey = docsS3ShortKey
        self.vendor = vendor
        self.lineItemType = lineItemType
        self.comments = comments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.amountUsd = try container.decode(Double.self, forKey: .amountUsd)
        self.docsS3ShortKey = try container.decodeIfPresent(JSONValue.self, forKey: .docsS3ShortKey)
        self.vendor = try container.decode(String.self, forKey: .vendor)
        self.lineItemType = try container.decode(LineItemEnum1.self, forKey: .lineItemType)
        self.comments = try container.decodeIfPresent(JSONValue.self, forKey: .comments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.amountUsd, forKey: .amountUsd)
        try container.encodeIfPresent(self.docsS3ShortKey, forKey: .docsS3ShortKey)
        try container.encode(self.vendor, forKey: .vendor)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encodeIfPresent(self.comments, forKey: .comments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case amountUsd = "amount_usd"
        case docsS3ShortKey = "docs_s3_short_key"
        case vendor
        case lineItemType = "line_item_type"
        case comments
    }
}