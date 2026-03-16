import Foundation

/// [WEBCARGO] Derived from <Segment> carrier + destination pairs.
public struct CargojsonRouting: Codable, Hashable, Sendable {
    public let carrierCode: String?
    public let destination: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierCode: String? = nil,
        destination: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierCode = carrierCode
        self.destination = destination
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierCode = try container.decodeIfPresent(String.self, forKey: .carrierCode)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.carrierCode, forKey: .carrierCode)
        try container.encodeIfPresent(self.destination, forKey: .destination)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierCode
        case destination
    }
}