import Foundation

public struct OnTime360TimeWindowResponse1: Codable, Hashable, Sendable {
    public let earliestTime: String?
    public let latestTime: String?
    public let length: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        earliestTime: String? = nil,
        latestTime: String? = nil,
        length: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.earliestTime = earliestTime
        self.latestTime = latestTime
        self.length = length
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.earliestTime = try container.decodeIfPresent(String.self, forKey: .earliestTime)
        self.latestTime = try container.decodeIfPresent(String.self, forKey: .latestTime)
        self.length = try container.decodeIfPresent(String.self, forKey: .length)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.earliestTime, forKey: .earliestTime)
        try container.encodeIfPresent(self.latestTime, forKey: .latestTime)
        try container.encodeIfPresent(self.length, forKey: .length)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case earliestTime = "EarliestTime"
        case latestTime = "LatestTime"
        case length = "Length"
    }
}