import Foundation

/// [CONFIG] Identifies a participant in the movement of a shipment.
public struct CargojsonParticipantIdentifier: Codable, Hashable, Sendable {
    public let airportCityCode: String
    public let code: String
    public let identifier: CargojsonParticipantType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airportCityCode: String,
        code: String,
        identifier: CargojsonParticipantType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airportCityCode = airportCityCode
        self.code = code
        self.identifier = identifier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airportCityCode = try container.decode(String.self, forKey: .airportCityCode)
        self.code = try container.decode(String.self, forKey: .code)
        self.identifier = try container.decode(CargojsonParticipantType.self, forKey: .identifier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.airportCityCode, forKey: .airportCityCode)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.identifier, forKey: .identifier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airportCityCode
        case code
        case identifier
    }
}