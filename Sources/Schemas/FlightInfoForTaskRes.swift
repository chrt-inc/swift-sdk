import Foundation

/// Response model for flight info lookup by task.
public struct FlightInfoForTaskRes: Codable, Hashable, Sendable {
    public let faFlightIds: [String]?
    public let flightNumber: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        faFlightIds: [String]? = nil,
        flightNumber: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.faFlightIds = faFlightIds
        self.flightNumber = flightNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case faFlightIds = "fa_flight_ids"
        case flightNumber = "flight_number"
    }
}