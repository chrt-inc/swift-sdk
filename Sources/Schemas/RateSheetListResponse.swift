import Foundation

/// Response model for rate sheet list endpoint.
public struct RateSheetListResponse: Codable, Hashable, Sendable {
    public let rateSheets: [RateSheet1]
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rateSheets: [RateSheet1],
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rateSheets = rateSheets
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rateSheets = try container.decode([RateSheet1].self, forKey: .rateSheets)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rateSheets, forKey: .rateSheets)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rateSheets = "rate_sheets"
        case totalCount = "total_count"
    }
}