import Foundation

public struct WebcargoSegment: Codable, Hashable, Sendable {
    public let destination: WebcargoLocation?
    public let itineraryNumber: String?
    public let latestAcceptanceDate: String?
    public let legs: [WebcargoLeg]?
    public let marketingCarrier: WebcargoCarrier?
    public let operatingCarrier: WebcargoCarrier?
    public let origin: WebcargoLocation?
    public let scheduledTimeOfArrival: String?
    public let scheduledTimeOfDeparture: String?
    public let segmentId: String?
    public let status: WebcargoBookStatus?
    public let transportMode: String?
    public let vehicleName: String?
    public let vehicleNumber: String?
    public let vehicleType: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        destination: WebcargoLocation? = nil,
        itineraryNumber: String? = nil,
        latestAcceptanceDate: String? = nil,
        legs: [WebcargoLeg]? = nil,
        marketingCarrier: WebcargoCarrier? = nil,
        operatingCarrier: WebcargoCarrier? = nil,
        origin: WebcargoLocation? = nil,
        scheduledTimeOfArrival: String? = nil,
        scheduledTimeOfDeparture: String? = nil,
        segmentId: String? = nil,
        status: WebcargoBookStatus? = nil,
        transportMode: String? = nil,
        vehicleName: String? = nil,
        vehicleNumber: String? = nil,
        vehicleType: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.destination = destination
        self.itineraryNumber = itineraryNumber
        self.latestAcceptanceDate = latestAcceptanceDate
        self.legs = legs
        self.marketingCarrier = marketingCarrier
        self.operatingCarrier = operatingCarrier
        self.origin = origin
        self.scheduledTimeOfArrival = scheduledTimeOfArrival
        self.scheduledTimeOfDeparture = scheduledTimeOfDeparture
        self.segmentId = segmentId
        self.status = status
        self.transportMode = transportMode
        self.vehicleName = vehicleName
        self.vehicleNumber = vehicleNumber
        self.vehicleType = vehicleType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.destination = try container.decodeIfPresent(WebcargoLocation.self, forKey: .destination)
        self.itineraryNumber = try container.decodeIfPresent(String.self, forKey: .itineraryNumber)
        self.latestAcceptanceDate = try container.decodeIfPresent(String.self, forKey: .latestAcceptanceDate)
        self.legs = try container.decodeIfPresent([WebcargoLeg].self, forKey: .legs)
        self.marketingCarrier = try container.decodeIfPresent(WebcargoCarrier.self, forKey: .marketingCarrier)
        self.operatingCarrier = try container.decodeIfPresent(WebcargoCarrier.self, forKey: .operatingCarrier)
        self.origin = try container.decodeIfPresent(WebcargoLocation.self, forKey: .origin)
        self.scheduledTimeOfArrival = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfArrival)
        self.scheduledTimeOfDeparture = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfDeparture)
        self.segmentId = try container.decodeIfPresent(String.self, forKey: .segmentId)
        self.status = try container.decodeIfPresent(WebcargoBookStatus.self, forKey: .status)
        self.transportMode = try container.decodeIfPresent(String.self, forKey: .transportMode)
        self.vehicleName = try container.decodeIfPresent(String.self, forKey: .vehicleName)
        self.vehicleNumber = try container.decodeIfPresent(String.self, forKey: .vehicleNumber)
        self.vehicleType = try container.decodeIfPresent(String.self, forKey: .vehicleType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.itineraryNumber, forKey: .itineraryNumber)
        try container.encodeIfPresent(self.latestAcceptanceDate, forKey: .latestAcceptanceDate)
        try container.encodeIfPresent(self.legs, forKey: .legs)
        try container.encodeIfPresent(self.marketingCarrier, forKey: .marketingCarrier)
        try container.encodeIfPresent(self.operatingCarrier, forKey: .operatingCarrier)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.scheduledTimeOfArrival, forKey: .scheduledTimeOfArrival)
        try container.encodeIfPresent(self.scheduledTimeOfDeparture, forKey: .scheduledTimeOfDeparture)
        try container.encodeIfPresent(self.segmentId, forKey: .segmentId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.transportMode, forKey: .transportMode)
        try container.encodeIfPresent(self.vehicleName, forKey: .vehicleName)
        try container.encodeIfPresent(self.vehicleNumber, forKey: .vehicleNumber)
        try container.encodeIfPresent(self.vehicleType, forKey: .vehicleType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case destination
        case itineraryNumber = "itinerary_number"
        case latestAcceptanceDate = "latest_acceptance_date"
        case legs
        case marketingCarrier = "marketing_carrier"
        case operatingCarrier = "operating_carrier"
        case origin
        case scheduledTimeOfArrival = "scheduled_time_of_arrival"
        case scheduledTimeOfDeparture = "scheduled_time_of_departure"
        case segmentId = "segment_id"
        case status
        case transportMode = "transport_mode"
        case vehicleName = "vehicle_name"
        case vehicleNumber = "vehicle_number"
        case vehicleType = "vehicle_type"
    }
}