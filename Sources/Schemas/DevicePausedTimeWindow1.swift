import Foundation

public struct DevicePausedTimeWindow1: Codable, Hashable, Sendable {
    public let startTimestamp: Date
    public let endTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        startTimestamp: Date,
        endTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.startTimestamp = startTimestamp
        self.endTimestamp = endTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.startTimestamp = try container.decode(Date.self, forKey: .startTimestamp)
        self.endTimestamp = try container.decodeIfPresent(Date.self, forKey: .endTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.startTimestamp, forKey: .startTimestamp)
        try container.encodeIfPresent(self.endTimestamp, forKey: .endTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case startTimestamp = "start_timestamp"
        case endTimestamp = "end_timestamp"
    }
}