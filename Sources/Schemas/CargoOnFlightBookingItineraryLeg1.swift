import Foundation

/// One leg of an itinerary: a flight, or a road feeder truck (`surface_transport`).
public struct CargoOnFlightBookingItineraryLeg1: Codable, Hashable, Sendable {
    public let carrierIata: String
    public let destinationIata: String
    public let flightNumber: String
    public let originIata: String
    public let scheduledArrivalUtc: Date
    public let scheduledDepartureUtc: Date
    public let surfaceTransport: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierIata: String,
        destinationIata: String,
        flightNumber: String,
        originIata: String,
        scheduledArrivalUtc: Date,
        scheduledDepartureUtc: Date,
        surfaceTransport: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierIata = carrierIata
        self.destinationIata = destinationIata
        self.flightNumber = flightNumber
        self.originIata = originIata
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.surfaceTransport = surfaceTransport
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierIata = try container.decode(String.self, forKey: .carrierIata)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.scheduledArrivalUtc = try container.decode(Date.self, forKey: .scheduledArrivalUtc)
        self.scheduledDepartureUtc = try container.decode(Date.self, forKey: .scheduledDepartureUtc)
        self.surfaceTransport = try container.decode(Bool.self, forKey: .surfaceTransport)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.carrierIata, forKey: .carrierIata)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encode(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
        try container.encode(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
        try container.encode(self.surfaceTransport, forKey: .surfaceTransport)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierIata = "carrier_iata"
        case destinationIata = "destination_iata"
        case flightNumber = "flight_number"
        case originIata = "origin_iata"
        case scheduledArrivalUtc = "scheduled_arrival_utc"
        case scheduledDepartureUtc = "scheduled_departure_utc"
        case surfaceTransport = "surface_transport"
    }
}