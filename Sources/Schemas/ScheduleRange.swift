import Foundation

/// Inclusive range for a schedule match value.
public struct ScheduleRange: Codable, Hashable, Sendable {
    public let end: Int?
    public let start: Int
    public let step: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        end: Int? = nil,
        start: Int,
        step: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.end = end
        self.start = start
        self.step = step
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.end = try container.decodeIfPresent(Int.self, forKey: .end)
        self.start = try container.decode(Int.self, forKey: .start)
        self.step = try container.decodeIfPresent(Int.self, forKey: .step)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.end, forKey: .end)
        try container.encode(self.start, forKey: .start)
        try container.encodeIfPresent(self.step, forKey: .step)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case end
        case start
        case step
    }
}