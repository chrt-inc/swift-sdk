import Foundation

/// The latest send of the house in an FHL, and the airline's answer to it.
public struct CargoOnFlightHouseAirWaybillFhlMessage1: Codable, Hashable, Sendable {
    public let airlineResponse: String?
    public let cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1
    public let respondedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let respondedByUserId: String?
    public let responseProvenance: CargoOnFlightAirWaybillMessageResponseProvenanceEnum1?
    public let sentAtTimestamp: Date
    public let status: CargoOnFlightAirWaybillMessageStatusEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airlineResponse: String? = nil,
        cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1,
        respondedAtTimestamp: Date? = nil,
        respondedByUserId: String? = nil,
        responseProvenance: CargoOnFlightAirWaybillMessageResponseProvenanceEnum1? = nil,
        sentAtTimestamp: Date,
        status: CargoOnFlightAirWaybillMessageStatusEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airlineResponse = airlineResponse
        self.cargoOnFlightIntegration = cargoOnFlightIntegration
        self.respondedAtTimestamp = respondedAtTimestamp
        self.respondedByUserId = respondedByUserId
        self.responseProvenance = responseProvenance
        self.sentAtTimestamp = sentAtTimestamp
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airlineResponse = try container.decodeIfPresent(String.self, forKey: .airlineResponse)
        self.cargoOnFlightIntegration = try container.decode(CargoOnFlightIntegrationEnum1.self, forKey: .cargoOnFlightIntegration)
        self.respondedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .respondedAtTimestamp)
        self.respondedByUserId = try container.decodeIfPresent(String.self, forKey: .respondedByUserId)
        self.responseProvenance = try container.decodeIfPresent(CargoOnFlightAirWaybillMessageResponseProvenanceEnum1.self, forKey: .responseProvenance)
        self.sentAtTimestamp = try container.decode(Date.self, forKey: .sentAtTimestamp)
        self.status = try container.decode(CargoOnFlightAirWaybillMessageStatusEnum1.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.airlineResponse, forKey: .airlineResponse)
        try container.encode(self.cargoOnFlightIntegration, forKey: .cargoOnFlightIntegration)
        try container.encodeIfPresent(self.respondedAtTimestamp, forKey: .respondedAtTimestamp)
        try container.encodeIfPresent(self.respondedByUserId, forKey: .respondedByUserId)
        try container.encodeIfPresent(self.responseProvenance, forKey: .responseProvenance)
        try container.encode(self.sentAtTimestamp, forKey: .sentAtTimestamp)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airlineResponse = "airline_response"
        case cargoOnFlightIntegration = "cargo_on_flight_integration"
        case respondedAtTimestamp = "responded_at_timestamp"
        case respondedByUserId = "responded_by_user_id"
        case responseProvenance = "response_provenance"
        case sentAtTimestamp = "sent_at_timestamp"
        case status
    }
}