import Foundation

/// ULD details attached to an event (`eventUlds`) or flight (`flightUlds`).
public struct CargoAiTrackAndTraceUld: Codable, Hashable, Sendable {
    public let pieces: String?
    public let uld: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        pieces: String? = nil,
        uld: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.pieces = pieces
        self.uld = uld
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.uld = try container.decodeIfPresent(String.self, forKey: .uld)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.uld, forKey: .uld)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case pieces
        case uld
    }
}