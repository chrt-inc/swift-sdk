import Foundation

public struct AnalyticsTimeBucketResponse: Codable, Hashable, Sendable {
    public let buckets: [TimeBucket]
    public let total: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        buckets: [TimeBucket],
        total: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.buckets = buckets
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.buckets = try container.decode([TimeBucket].self, forKey: .buckets)
        self.total = try container.decode(Double.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.buckets, forKey: .buckets)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case buckets
        case total
    }
}