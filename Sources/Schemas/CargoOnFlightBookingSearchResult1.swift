import Foundation

public struct CargoOnFlightBookingSearchResult1: Codable, Hashable, Sendable {
    public let airlineConditions: String?
    public let airlineContacts: [String]?
    public let awbPrefixes: [String]?
    public let awbRequired: Bool
    public let bookable: Bool
    public let carrierIata: String
    public let handlingInfoLink: String?
    public let integrationResultId: String
    public let latestAcceptanceUtc: Date?
    public let legs: [CargoOnFlightBookingItineraryLeg1]?
    public let notBookableReason: String?
    public let originGroundHandlingAgentAddress: String?
    public let originGroundHandlingAgentName: String?
    public let rates: [CargoOnFlightBookingRate1]?
    public let timeOfAvailabilityUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airlineConditions: String? = nil,
        airlineContacts: [String]? = nil,
        awbPrefixes: [String]? = nil,
        awbRequired: Bool,
        bookable: Bool,
        carrierIata: String,
        handlingInfoLink: String? = nil,
        integrationResultId: String,
        latestAcceptanceUtc: Date? = nil,
        legs: [CargoOnFlightBookingItineraryLeg1]? = nil,
        notBookableReason: String? = nil,
        originGroundHandlingAgentAddress: String? = nil,
        originGroundHandlingAgentName: String? = nil,
        rates: [CargoOnFlightBookingRate1]? = nil,
        timeOfAvailabilityUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airlineConditions = airlineConditions
        self.airlineContacts = airlineContacts
        self.awbPrefixes = awbPrefixes
        self.awbRequired = awbRequired
        self.bookable = bookable
        self.carrierIata = carrierIata
        self.handlingInfoLink = handlingInfoLink
        self.integrationResultId = integrationResultId
        self.latestAcceptanceUtc = latestAcceptanceUtc
        self.legs = legs
        self.notBookableReason = notBookableReason
        self.originGroundHandlingAgentAddress = originGroundHandlingAgentAddress
        self.originGroundHandlingAgentName = originGroundHandlingAgentName
        self.rates = rates
        self.timeOfAvailabilityUtc = timeOfAvailabilityUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airlineConditions = try container.decodeIfPresent(String.self, forKey: .airlineConditions)
        self.airlineContacts = try container.decodeIfPresent([String].self, forKey: .airlineContacts)
        self.awbPrefixes = try container.decodeIfPresent([String].self, forKey: .awbPrefixes)
        self.awbRequired = try container.decode(Bool.self, forKey: .awbRequired)
        self.bookable = try container.decode(Bool.self, forKey: .bookable)
        self.carrierIata = try container.decode(String.self, forKey: .carrierIata)
        self.handlingInfoLink = try container.decodeIfPresent(String.self, forKey: .handlingInfoLink)
        self.integrationResultId = try container.decode(String.self, forKey: .integrationResultId)
        self.latestAcceptanceUtc = try container.decodeIfPresent(Date.self, forKey: .latestAcceptanceUtc)
        self.legs = try container.decodeIfPresent([CargoOnFlightBookingItineraryLeg1].self, forKey: .legs)
        self.notBookableReason = try container.decodeIfPresent(String.self, forKey: .notBookableReason)
        self.originGroundHandlingAgentAddress = try container.decodeIfPresent(String.self, forKey: .originGroundHandlingAgentAddress)
        self.originGroundHandlingAgentName = try container.decodeIfPresent(String.self, forKey: .originGroundHandlingAgentName)
        self.rates = try container.decodeIfPresent([CargoOnFlightBookingRate1].self, forKey: .rates)
        self.timeOfAvailabilityUtc = try container.decodeIfPresent(Date.self, forKey: .timeOfAvailabilityUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.airlineConditions, forKey: .airlineConditions)
        try container.encodeIfPresent(self.airlineContacts, forKey: .airlineContacts)
        try container.encodeIfPresent(self.awbPrefixes, forKey: .awbPrefixes)
        try container.encode(self.awbRequired, forKey: .awbRequired)
        try container.encode(self.bookable, forKey: .bookable)
        try container.encode(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.handlingInfoLink, forKey: .handlingInfoLink)
        try container.encode(self.integrationResultId, forKey: .integrationResultId)
        try container.encodeIfPresent(self.latestAcceptanceUtc, forKey: .latestAcceptanceUtc)
        try container.encodeIfPresent(self.legs, forKey: .legs)
        try container.encodeIfPresent(self.notBookableReason, forKey: .notBookableReason)
        try container.encodeIfPresent(self.originGroundHandlingAgentAddress, forKey: .originGroundHandlingAgentAddress)
        try container.encodeIfPresent(self.originGroundHandlingAgentName, forKey: .originGroundHandlingAgentName)
        try container.encodeIfPresent(self.rates, forKey: .rates)
        try container.encodeIfPresent(self.timeOfAvailabilityUtc, forKey: .timeOfAvailabilityUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airlineConditions = "airline_conditions"
        case airlineContacts = "airline_contacts"
        case awbPrefixes = "awb_prefixes"
        case awbRequired = "awb_required"
        case bookable
        case carrierIata = "carrier_iata"
        case handlingInfoLink = "handling_info_link"
        case integrationResultId = "integration_result_id"
        case latestAcceptanceUtc = "latest_acceptance_utc"
        case legs
        case notBookableReason = "not_bookable_reason"
        case originGroundHandlingAgentAddress = "origin_ground_handling_agent_address"
        case originGroundHandlingAgentName = "origin_ground_handling_agent_name"
        case rates
        case timeOfAvailabilityUtc = "time_of_availability_utc"
    }
}