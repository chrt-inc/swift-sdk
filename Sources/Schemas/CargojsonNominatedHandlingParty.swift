import Foundation

/// [CUSTOMER] Nominated handling party for the shipment.
public struct CargojsonNominatedHandlingParty: Codable, Hashable, Sendable {
    public let name: String
    public let place: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        place: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.place = place
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.place = try container.decode(String.self, forKey: .place)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.place, forKey: .place)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case place
    }
}