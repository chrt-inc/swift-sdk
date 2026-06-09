import Foundation

/// Response model for flight info lookup by task — the ordered flight legs
/// of the adjacent CARGO_ON_FLIGHT task group.
public struct FlightInfoForTaskRes: Codable, Hashable, Sendable {
    public let flightLegs: [FlightLeg1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flightLegs: [FlightLeg1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flightLegs = flightLegs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flightLegs = try container.decodeIfPresent([FlightLeg1].self, forKey: .flightLegs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.flightLegs, forKey: .flightLegs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flightLegs = "flight_legs"
    }
}