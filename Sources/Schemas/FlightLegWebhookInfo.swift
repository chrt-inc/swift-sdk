import Foundation

/// A single flight leg in a task group's ordered flight legs.
public struct FlightLegWebhookInfo: Codable, Hashable, Sendable {
    /// Carrier IATA code
    public let carrierIata: String?
    /// Destination airport IATA code
    public let destinationIata: String?
    /// The flight number
    public let flightNumber: String
    /// Origin airport IATA code
    public let originIata: String?
    /// Scheduled arrival (UTC)
    public let scheduledArrivalUtc: Date?
    /// Scheduled departure (UTC)
    public let scheduledDepartureUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierIata: String? = nil,
        destinationIata: String? = nil,
        flightNumber: String,
        originIata: String? = nil,
        scheduledArrivalUtc: Date? = nil,
        scheduledDepartureUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierIata = carrierIata
        self.destinationIata = destinationIata
        self.flightNumber = flightNumber
        self.originIata = originIata
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierIata = try container.decodeIfPresent(String.self, forKey: .carrierIata)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.scheduledArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledArrivalUtc)
        self.scheduledDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledDepartureUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
        try container.encodeIfPresent(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierIata = "carrier_iata"
        case destinationIata = "destination_iata"
        case flightNumber = "flight_number"
        case originIata = "origin_iata"
        case scheduledArrivalUtc = "scheduled_arrival_utc"
        case scheduledDepartureUtc = "scheduled_departure_utc"
    }
}