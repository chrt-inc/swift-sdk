import Foundation

public struct CargoOnFlightBookingSearchResult1: Codable, Hashable, Sendable {
    public let awbPrefixes: [String]?
    public let awbRequired: Bool
    public let bookable: Bool
    public let carrierIata: String
    public let integrationResultId: String
    public let latestAcceptanceUtc: Date?
    public let legs: [CargoOnFlightBookingItineraryLeg1]?
    public let notBookableReason: String?
    public let rates: [CargoOnFlightBookingRate1]?
    public let timeOfAvailabilityUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbPrefixes: [String]? = nil,
        awbRequired: Bool,
        bookable: Bool,
        carrierIata: String,
        integrationResultId: String,
        latestAcceptanceUtc: Date? = nil,
        legs: [CargoOnFlightBookingItineraryLeg1]? = nil,
        notBookableReason: String? = nil,
        rates: [CargoOnFlightBookingRate1]? = nil,
        timeOfAvailabilityUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbPrefixes = awbPrefixes
        self.awbRequired = awbRequired
        self.bookable = bookable
        self.carrierIata = carrierIata
        self.integrationResultId = integrationResultId
        self.latestAcceptanceUtc = latestAcceptanceUtc
        self.legs = legs
        self.notBookableReason = notBookableReason
        self.rates = rates
        self.timeOfAvailabilityUtc = timeOfAvailabilityUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbPrefixes = try container.decodeIfPresent([String].self, forKey: .awbPrefixes)
        self.awbRequired = try container.decode(Bool.self, forKey: .awbRequired)
        self.bookable = try container.decode(Bool.self, forKey: .bookable)
        self.carrierIata = try container.decode(String.self, forKey: .carrierIata)
        self.integrationResultId = try container.decode(String.self, forKey: .integrationResultId)
        self.latestAcceptanceUtc = try container.decodeIfPresent(Date.self, forKey: .latestAcceptanceUtc)
        self.legs = try container.decodeIfPresent([CargoOnFlightBookingItineraryLeg1].self, forKey: .legs)
        self.notBookableReason = try container.decodeIfPresent(String.self, forKey: .notBookableReason)
        self.rates = try container.decodeIfPresent([CargoOnFlightBookingRate1].self, forKey: .rates)
        self.timeOfAvailabilityUtc = try container.decodeIfPresent(Date.self, forKey: .timeOfAvailabilityUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.awbPrefixes, forKey: .awbPrefixes)
        try container.encode(self.awbRequired, forKey: .awbRequired)
        try container.encode(self.bookable, forKey: .bookable)
        try container.encode(self.carrierIata, forKey: .carrierIata)
        try container.encode(self.integrationResultId, forKey: .integrationResultId)
        try container.encodeIfPresent(self.latestAcceptanceUtc, forKey: .latestAcceptanceUtc)
        try container.encodeIfPresent(self.legs, forKey: .legs)
        try container.encodeIfPresent(self.notBookableReason, forKey: .notBookableReason)
        try container.encodeIfPresent(self.rates, forKey: .rates)
        try container.encodeIfPresent(self.timeOfAvailabilityUtc, forKey: .timeOfAvailabilityUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbPrefixes = "awb_prefixes"
        case awbRequired = "awb_required"
        case bookable
        case carrierIata = "carrier_iata"
        case integrationResultId = "integration_result_id"
        case latestAcceptanceUtc = "latest_acceptance_utc"
        case legs
        case notBookableReason = "not_bookable_reason"
        case rates
        case timeOfAvailabilityUtc = "time_of_availability_utc"
    }
}