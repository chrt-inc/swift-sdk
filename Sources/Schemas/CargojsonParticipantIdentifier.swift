import Foundation

/// [CONFIG] Identifies a participant in the movement of a shipment.
public struct CargojsonParticipantIdentifier: Codable, Hashable, Sendable {
    public let identifier: CargojsonParticipantType
    public let code: String
    public let airportCityCode: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        identifier: CargojsonParticipantType,
        code: String,
        airportCityCode: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.identifier = identifier
        self.code = code
        self.airportCityCode = airportCityCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.identifier = try container.decode(CargojsonParticipantType.self, forKey: .identifier)
        self.code = try container.decode(String.self, forKey: .code)
        self.airportCityCode = try container.decode(String.self, forKey: .airportCityCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.identifier, forKey: .identifier)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.airportCityCode, forKey: .airportCityCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case identifier
        case code
        case airportCityCode
    }
}