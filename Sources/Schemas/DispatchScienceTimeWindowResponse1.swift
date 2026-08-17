import Foundation

public struct DispatchScienceTimeWindowResponse1: Codable, Hashable, Sendable {
    public let end: String?
    public let start: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        end: String? = nil,
        start: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.end = end
        self.start = start
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.end = try container.decodeIfPresent(String.self, forKey: .end)
        self.start = try container.decodeIfPresent(String.self, forKey: .start)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.end, forKey: .end)
        try container.encodeIfPresent(self.start, forKey: .start)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case end
        case start
    }
}