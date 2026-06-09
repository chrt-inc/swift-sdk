import Foundation

public struct SetFlightInfoReq: Codable, Hashable, Sendable {
    /// Ordered list of flight legs for the task group. Replaces any existing flight legs. Pass an empty list to clear all flight legs.
    public let flightLegs: [FlightLegClientCreate1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flightLegs: [FlightLegClientCreate1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flightLegs = flightLegs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flightLegs = try container.decode([FlightLegClientCreate1].self, forKey: .flightLegs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.flightLegs, forKey: .flightLegs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flightLegs = "flight_legs"
    }
}