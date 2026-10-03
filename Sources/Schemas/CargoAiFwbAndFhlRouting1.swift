import Foundation

public struct CargoAiFwbAndFhlRouting1: Codable, Hashable, Sendable {
    public let carrierCode: String
    public let flightNumber: String?
    public let fromAirportCode: String
    public let toAirportCode: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierCode: String,
        flightNumber: String? = nil,
        fromAirportCode: String,
        toAirportCode: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierCode = carrierCode
        self.flightNumber = flightNumber
        self.fromAirportCode = fromAirportCode
        self.toAirportCode = toAirportCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierCode = try container.decode(String.self, forKey: .carrierCode)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.fromAirportCode = try container.decode(String.self, forKey: .fromAirportCode)
        self.toAirportCode = try container.decode(String.self, forKey: .toAirportCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.carrierCode, forKey: .carrierCode)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.fromAirportCode, forKey: .fromAirportCode)
        try container.encode(self.toAirportCode, forKey: .toAirportCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierCode = "carrier_code"
        case flightNumber = "flight_number"
        case fromAirportCode = "from_airport_code"
        case toAirportCode = "to_airport_code"
    }
}