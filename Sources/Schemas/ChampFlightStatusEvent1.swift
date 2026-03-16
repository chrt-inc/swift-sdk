import Foundation

public struct ChampFlightStatusEvent1: Codable, Hashable, Sendable {
    public let type: String
    public let numberOfPieces: Int?
    public let weight: CargojsonWeight?
    public let timeOfEvent: String?
    public let timeOfEventTimePartQuality: String?
    public let otherServiceInformation: String?
    public let flight: String?
    public let origin: String?
    public let destination: String?
    public let dateOfScheduledDeparture: String?
    public let dateOfScheduledArrival: String?
    public let timeOfScheduledDeparture: String?
    public let timeOfScheduledArrival: String?
    public let airportOfReceipt: String?
    public let receivedFromName: String?
    public let airportOfDelivery: String?
    public let deliveryToName: String?
    public let airportOfNotification: String?
    public let notificationToName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: String,
        numberOfPieces: Int? = nil,
        weight: CargojsonWeight? = nil,
        timeOfEvent: String? = nil,
        timeOfEventTimePartQuality: String? = nil,
        otherServiceInformation: String? = nil,
        flight: String? = nil,
        origin: String? = nil,
        destination: String? = nil,
        dateOfScheduledDeparture: String? = nil,
        dateOfScheduledArrival: String? = nil,
        timeOfScheduledDeparture: String? = nil,
        timeOfScheduledArrival: String? = nil,
        airportOfReceipt: String? = nil,
        receivedFromName: String? = nil,
        airportOfDelivery: String? = nil,
        deliveryToName: String? = nil,
        airportOfNotification: String? = nil,
        notificationToName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.numberOfPieces = numberOfPieces
        self.weight = weight
        self.timeOfEvent = timeOfEvent
        self.timeOfEventTimePartQuality = timeOfEventTimePartQuality
        self.otherServiceInformation = otherServiceInformation
        self.flight = flight
        self.origin = origin
        self.destination = destination
        self.dateOfScheduledDeparture = dateOfScheduledDeparture
        self.dateOfScheduledArrival = dateOfScheduledArrival
        self.timeOfScheduledDeparture = timeOfScheduledDeparture
        self.timeOfScheduledArrival = timeOfScheduledArrival
        self.airportOfReceipt = airportOfReceipt
        self.receivedFromName = receivedFromName
        self.airportOfDelivery = airportOfDelivery
        self.deliveryToName = deliveryToName
        self.airportOfNotification = airportOfNotification
        self.notificationToName = notificationToName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(String.self, forKey: .type)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
        self.timeOfEvent = try container.decodeIfPresent(String.self, forKey: .timeOfEvent)
        self.timeOfEventTimePartQuality = try container.decodeIfPresent(String.self, forKey: .timeOfEventTimePartQuality)
        self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
        self.flight = try container.decodeIfPresent(String.self, forKey: .flight)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.dateOfScheduledDeparture = try container.decodeIfPresent(String.self, forKey: .dateOfScheduledDeparture)
        self.dateOfScheduledArrival = try container.decodeIfPresent(String.self, forKey: .dateOfScheduledArrival)
        self.timeOfScheduledDeparture = try container.decodeIfPresent(String.self, forKey: .timeOfScheduledDeparture)
        self.timeOfScheduledArrival = try container.decodeIfPresent(String.self, forKey: .timeOfScheduledArrival)
        self.airportOfReceipt = try container.decodeIfPresent(String.self, forKey: .airportOfReceipt)
        self.receivedFromName = try container.decodeIfPresent(String.self, forKey: .receivedFromName)
        self.airportOfDelivery = try container.decodeIfPresent(String.self, forKey: .airportOfDelivery)
        self.deliveryToName = try container.decodeIfPresent(String.self, forKey: .deliveryToName)
        self.airportOfNotification = try container.decodeIfPresent(String.self, forKey: .airportOfNotification)
        self.notificationToName = try container.decodeIfPresent(String.self, forKey: .notificationToName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.timeOfEvent, forKey: .timeOfEvent)
        try container.encodeIfPresent(self.timeOfEventTimePartQuality, forKey: .timeOfEventTimePartQuality)
        try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
        try container.encodeIfPresent(self.flight, forKey: .flight)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.dateOfScheduledDeparture, forKey: .dateOfScheduledDeparture)
        try container.encodeIfPresent(self.dateOfScheduledArrival, forKey: .dateOfScheduledArrival)
        try container.encodeIfPresent(self.timeOfScheduledDeparture, forKey: .timeOfScheduledDeparture)
        try container.encodeIfPresent(self.timeOfScheduledArrival, forKey: .timeOfScheduledArrival)
        try container.encodeIfPresent(self.airportOfReceipt, forKey: .airportOfReceipt)
        try container.encodeIfPresent(self.receivedFromName, forKey: .receivedFromName)
        try container.encodeIfPresent(self.airportOfDelivery, forKey: .airportOfDelivery)
        try container.encodeIfPresent(self.deliveryToName, forKey: .deliveryToName)
        try container.encodeIfPresent(self.airportOfNotification, forKey: .airportOfNotification)
        try container.encodeIfPresent(self.notificationToName, forKey: .notificationToName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case numberOfPieces
        case weight
        case timeOfEvent
        case timeOfEventTimePartQuality
        case otherServiceInformation
        case flight
        case origin
        case destination
        case dateOfScheduledDeparture
        case dateOfScheduledArrival
        case timeOfScheduledDeparture
        case timeOfScheduledArrival
        case airportOfReceipt
        case receivedFromName
        case airportOfDelivery
        case deliveryToName
        case airportOfNotification
        case notificationToName
    }
}