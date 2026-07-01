import Foundation

public struct TiveTimeseriesSyncRes: Codable, Hashable, Sendable {
    public let duplicatesFiltered: Int
    public let newDataPointsCount: Int
    public let skippedNoLocation: Int
    public let totalFetchedFromTive: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        duplicatesFiltered: Int,
        newDataPointsCount: Int,
        skippedNoLocation: Int,
        totalFetchedFromTive: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.duplicatesFiltered = duplicatesFiltered
        self.newDataPointsCount = newDataPointsCount
        self.skippedNoLocation = skippedNoLocation
        self.totalFetchedFromTive = totalFetchedFromTive
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.duplicatesFiltered = try container.decode(Int.self, forKey: .duplicatesFiltered)
        self.newDataPointsCount = try container.decode(Int.self, forKey: .newDataPointsCount)
        self.skippedNoLocation = try container.decode(Int.self, forKey: .skippedNoLocation)
        self.totalFetchedFromTive = try container.decode(Int.self, forKey: .totalFetchedFromTive)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.duplicatesFiltered, forKey: .duplicatesFiltered)
        try container.encode(self.newDataPointsCount, forKey: .newDataPointsCount)
        try container.encode(self.skippedNoLocation, forKey: .skippedNoLocation)
        try container.encode(self.totalFetchedFromTive, forKey: .totalFetchedFromTive)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case duplicatesFiltered = "duplicates_filtered"
        case newDataPointsCount = "new_data_points_count"
        case skippedNoLocation = "skipped_no_location"
        case totalFetchedFromTive = "total_fetched_from_tive"
    }
}