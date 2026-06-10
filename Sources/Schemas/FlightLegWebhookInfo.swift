import Foundation

/// A single flight leg in a task group's ordered flight legs.
public struct FlightLegWebhookInfo: Codable, Hashable, Sendable {
    /// The flight number
    public let flightNumber: String
    /// Carrier IATA code
    public let carrierIata: String?
    /// Origin airport IATA code
    public let originIata: String?
    /// Destination airport IATA code
    public let destinationIata: String?
    /// Scheduled departure (UTC)
    public let scheduledDepartureUtc: Date?
    /// Scheduled arrival (UTC)
    public let scheduledArrivalUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flightNumber: String,
        carrierIata: String? = nil,
        originIata: String? = nil,
        destinationIata: String? = nil,
        scheduledDepartureUtc: Date? = nil,
        scheduledArrivalUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flightNumber = flightNumber
        self.carrierIata = carrierIata
        self.originIata = originIata
        self.destinationIata = destinationIata
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.carrierIata = try container.decodeIfPresent(String.self, forKey: .carrierIata)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.scheduledDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledDepartureUtc)
        self.scheduledArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledArrivalUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
        try container.encodeIfPresent(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flightNumber = "flight_number"
        case carrierIata = "carrier_iata"
        case originIata = "origin_iata"
        case destinationIata = "destination_iata"
        case scheduledDepartureUtc = "scheduled_departure_utc"
        case scheduledArrivalUtc = "scheduled_arrival_utc"
    }
}