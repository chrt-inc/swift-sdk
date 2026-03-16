import Foundation

public struct WebcargoSegment: Codable, Hashable, Sendable {
    public let segmentId: String?
    public let status: WebcargoBookStatus?
    public let vehicleType: String?
    public let vehicleNumber: String?
    public let vehicleName: String?
    public let itineraryNumber: String?
    public let transportMode: String?
    public let origin: WebcargoLocation?
    public let destination: WebcargoLocation?
    public let legs: [WebcargoLeg]?
    public let latestAcceptanceDate: String?
    public let scheduledTimeOfDeparture: String?
    public let scheduledTimeOfArrival: String?
    public let operatingCarrier: WebcargoCarrier?
    public let marketingCarrier: WebcargoCarrier?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        segmentId: String? = nil,
        status: WebcargoBookStatus? = nil,
        vehicleType: String? = nil,
        vehicleNumber: String? = nil,
        vehicleName: String? = nil,
        itineraryNumber: String? = nil,
        transportMode: String? = nil,
        origin: WebcargoLocation? = nil,
        destination: WebcargoLocation? = nil,
        legs: [WebcargoLeg]? = nil,
        latestAcceptanceDate: String? = nil,
        scheduledTimeOfDeparture: String? = nil,
        scheduledTimeOfArrival: String? = nil,
        operatingCarrier: WebcargoCarrier? = nil,
        marketingCarrier: WebcargoCarrier? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.segmentId = segmentId
        self.status = status
        self.vehicleType = vehicleType
        self.vehicleNumber = vehicleNumber
        self.vehicleName = vehicleName
        self.itineraryNumber = itineraryNumber
        self.transportMode = transportMode
        self.origin = origin
        self.destination = destination
        self.legs = legs
        self.latestAcceptanceDate = latestAcceptanceDate
        self.scheduledTimeOfDeparture = scheduledTimeOfDeparture
        self.scheduledTimeOfArrival = scheduledTimeOfArrival
        self.operatingCarrier = operatingCarrier
        self.marketingCarrier = marketingCarrier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.segmentId = try container.decodeIfPresent(String.self, forKey: .segmentId)
        self.status = try container.decodeIfPresent(WebcargoBookStatus.self, forKey: .status)
        self.vehicleType = try container.decodeIfPresent(String.self, forKey: .vehicleType)
        self.vehicleNumber = try container.decodeIfPresent(String.self, forKey: .vehicleNumber)
        self.vehicleName = try container.decodeIfPresent(String.self, forKey: .vehicleName)
        self.itineraryNumber = try container.decodeIfPresent(String.self, forKey: .itineraryNumber)
        self.transportMode = try container.decodeIfPresent(String.self, forKey: .transportMode)
        self.origin = try container.decodeIfPresent(WebcargoLocation.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(WebcargoLocation.self, forKey: .destination)
        self.legs = try container.decodeIfPresent([WebcargoLeg].self, forKey: .legs)
        self.latestAcceptanceDate = try container.decodeIfPresent(String.self, forKey: .latestAcceptanceDate)
        self.scheduledTimeOfDeparture = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfDeparture)
        self.scheduledTimeOfArrival = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfArrival)
        self.operatingCarrier = try container.decodeIfPresent(WebcargoCarrier.self, forKey: .operatingCarrier)
        self.marketingCarrier = try container.decodeIfPresent(WebcargoCarrier.self, forKey: .marketingCarrier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.segmentId, forKey: .segmentId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
        try container.encodeIfPresent(self.vehicleNumber, forKey: .vehicleNumber)
        try container.encodeIfPresent(self.vehicleName, forKey: .vehicleName)
        try container.encodeIfPresent(self.itineraryNumber, forKey: .itineraryNumber)
        try container.encodeIfPresent(self.transportMode, forKey: .transportMode)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.legs, forKey: .legs)
        try container.encodeIfPresent(self.latestAcceptanceDate, forKey: .latestAcceptanceDate)
        try container.encodeIfPresent(self.scheduledTimeOfDeparture, forKey: .scheduledTimeOfDeparture)
        try container.encodeIfPresent(self.scheduledTimeOfArrival, forKey: .scheduledTimeOfArrival)
        try container.encodeIfPresent(self.operatingCarrier, forKey: .operatingCarrier)
        try container.encodeIfPresent(self.marketingCarrier, forKey: .marketingCarrier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case segmentId = "segment_id"
        case status
        case vehicleType = "vehicle_type"
        case vehicleNumber = "vehicle_number"
        case vehicleName = "vehicle_name"
        case itineraryNumber = "itinerary_number"
        case transportMode = "transport_mode"
        case origin
        case destination
        case legs
        case latestAcceptanceDate = "latest_acceptance_date"
        case scheduledTimeOfDeparture = "scheduled_time_of_departure"
        case scheduledTimeOfArrival = "scheduled_time_of_arrival"
        case operatingCarrier = "operating_carrier"
        case marketingCarrier = "marketing_carrier"
    }
}