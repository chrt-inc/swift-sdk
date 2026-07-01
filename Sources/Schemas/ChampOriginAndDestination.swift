import Foundation

public struct ChampOriginAndDestination: Codable, Hashable, Sendable {
    public let destination: String
    public let origin: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        destination: String,
        origin: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.destination = destination
        self.origin = origin
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.destination = try container.decode(String.self, forKey: .destination)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.destination, forKey: .destination)
        try container.encode(self.origin, forKey: .origin)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case destination
        case origin
    }
}