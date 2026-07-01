import Foundation

/// Specification for scheduling on an interval.
/// 
/// Matches times expressed as epoch + (n * every) + offset.
public struct ScheduleIntervalSpec: Codable, Hashable, Sendable {
    public let every: String
    public let offset: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        every: String,
        offset: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.every = every
        self.offset = offset
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.every = try container.decode(String.self, forKey: .every)
        self.offset = try container.decodeIfPresent(String.self, forKey: .offset)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.every, forKey: .every)
        try container.encodeIfPresent(self.offset, forKey: .offset)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case every
        case offset
    }
}