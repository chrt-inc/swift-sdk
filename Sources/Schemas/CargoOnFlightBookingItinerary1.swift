import Foundation

/// The itinerary of the search result a booking was placed on.
public struct CargoOnFlightBookingItinerary1: Codable, Hashable, Sendable {
    public let carrierIata: String
    public let latestAcceptanceUtc: Date?
    public let legs: [CargoOnFlightBookingItineraryLeg1]?
    public let timeOfAvailabilityUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierIata: String,
        latestAcceptanceUtc: Date? = nil,
        legs: [CargoOnFlightBookingItineraryLeg1]? = nil,
        timeOfAvailabilityUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierIata = carrierIata
        self.latestAcceptanceUtc = latestAcceptanceUtc
        self.legs = legs
        self.timeOfAvailabilityUtc = timeOfAvailabilityUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierIata = try container.decode(String.self, forKey: .carrierIata)
        self.latestAcceptanceUtc = try container.decodeIfPresent(Date.self, forKey: .latestAcceptanceUtc)
        self.legs = try container.decodeIfPresent([CargoOnFlightBookingItineraryLeg1].self, forKey: .legs)
        self.timeOfAvailabilityUtc = try container.decodeIfPresent(Date.self, forKey: .timeOfAvailabilityUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.latestAcceptanceUtc, forKey: .latestAcceptanceUtc)
        try container.encodeIfPresent(self.legs, forKey: .legs)
        try container.encodeIfPresent(self.timeOfAvailabilityUtc, forKey: .timeOfAvailabilityUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierIata = "carrier_iata"
        case latestAcceptanceUtc = "latest_acceptance_utc"
        case legs
        case timeOfAvailabilityUtc = "time_of_availability_utc"
    }
}