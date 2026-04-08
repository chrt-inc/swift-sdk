import Foundation

public struct TiveTimeseriesSyncRes: Codable, Hashable, Sendable {
    public let totalFetchedFromTive: Int
    public let skippedNoLocation: Int
    public let duplicatesFiltered: Int
    public let newDataPointsCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        totalFetchedFromTive: Int,
        skippedNoLocation: Int,
        duplicatesFiltered: Int,
        newDataPointsCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.totalFetchedFromTive = totalFetchedFromTive
        self.skippedNoLocation = skippedNoLocation
        self.duplicatesFiltered = duplicatesFiltered
        self.newDataPointsCount = newDataPointsCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.totalFetchedFromTive = try container.decode(Int.self, forKey: .totalFetchedFromTive)
        self.skippedNoLocation = try container.decode(Int.self, forKey: .skippedNoLocation)
        self.duplicatesFiltered = try container.decode(Int.self, forKey: .duplicatesFiltered)
        self.newDataPointsCount = try container.decode(Int.self, forKey: .newDataPointsCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.totalFetchedFromTive, forKey: .totalFetchedFromTive)
        try container.encode(self.skippedNoLocation, forKey: .skippedNoLocation)
        try container.encode(self.duplicatesFiltered, forKey: .duplicatesFiltered)
        try container.encode(self.newDataPointsCount, forKey: .newDataPointsCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case totalFetchedFromTive = "total_fetched_from_tive"
        case skippedNoLocation = "skipped_no_location"
        case duplicatesFiltered = "duplicates_filtered"
        case newDataPointsCount = "new_data_points_count"
    }
}