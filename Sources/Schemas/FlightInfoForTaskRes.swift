import Foundation

/// Response model for flight info lookup by task.
public struct FlightInfoForTaskRes: Codable, Hashable, Sendable {
    public let flightNumber: String?
    public let faFlightIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flightNumber: String? = nil,
        faFlightIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flightNumber = flightNumber
        self.faFlightIds = faFlightIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flightNumber = "flight_number"
        case faFlightIds = "fa_flight_ids"
    }
}