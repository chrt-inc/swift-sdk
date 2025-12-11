import Foundation

public struct SetFlightInfoReq: Codable, Hashable, Sendable {
    /// Flight number to set on the task group
    public let flightNumber: String?
    /// Flight Aware's uuid for flights
    public let faFlightId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flightNumber: String? = nil,
        faFlightId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flightNumber = flightNumber
        self.faFlightId = faFlightId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.faFlightId = try container.decodeIfPresent(String.self, forKey: .faFlightId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.faFlightId, forKey: .faFlightId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flightNumber = "flight_number"
        case faFlightId = "fa_flight_id"
    }
}