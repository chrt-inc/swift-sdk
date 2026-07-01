import Foundation

public struct ChampFlightStatusEvent1: Codable, Hashable, Sendable {
    public let airportOfDelivery: String?
    public let airportOfNotification: String?
    public let airportOfReceipt: String?
    public let dateOfScheduledArrival: String?
    public let dateOfScheduledDeparture: String?
    public let deliveryToName: String?
    public let destination: String?
    public let flight: String?
    public let notificationToName: String?
    public let numberOfPieces: Int?
    public let origin: String?
    public let otherServiceInformation: String?
    public let receivedFromName: String?
    public let timeOfEvent: String?
    public let timeOfEventTimePartQuality: String?
    public let timeOfScheduledArrival: String?
    public let timeOfScheduledDeparture: String?
    public let type: String
    public let weight: CargojsonWeight?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airportOfDelivery: String? = nil,
        airportOfNotification: String? = nil,
        airportOfReceipt: String? = nil,
        dateOfScheduledArrival: String? = nil,
        dateOfScheduledDeparture: String? = nil,
        deliveryToName: String? = nil,
        destination: String? = nil,
        flight: String? = nil,
        notificationToName: String? = nil,
        numberOfPieces: Int? = nil,
        origin: String? = nil,
        otherServiceInformation: String? = nil,
        receivedFromName: String? = nil,
        timeOfEvent: String? = nil,
        timeOfEventTimePartQuality: String? = nil,
        timeOfScheduledArrival: String? = nil,
        timeOfScheduledDeparture: String? = nil,
        type: String,
        weight: CargojsonWeight? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airportOfDelivery = airportOfDelivery
        self.airportOfNotification = airportOfNotification
        self.airportOfReceipt = airportOfReceipt
        self.dateOfScheduledArrival = dateOfScheduledArrival
        self.dateOfScheduledDeparture = dateOfScheduledDeparture
        self.deliveryToName = deliveryToName
        self.destination = destination
        self.flight = flight
        self.notificationToName = notificationToName
        self.numberOfPieces = numberOfPieces
        self.origin = origin
        self.otherServiceInformation = otherServiceInformation
        self.receivedFromName = receivedFromName
        self.timeOfEvent = timeOfEvent
        self.timeOfEventTimePartQuality = timeOfEventTimePartQuality
        self.timeOfScheduledArrival = timeOfScheduledArrival
        self.timeOfScheduledDeparture = timeOfScheduledDeparture
        self.type = type
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airportOfDelivery = try container.decodeIfPresent(String.self, forKey: .airportOfDelivery)
        self.airportOfNotification = try container.decodeIfPresent(String.self, forKey: .airportOfNotification)
        self.airportOfReceipt = try container.decodeIfPresent(String.self, forKey: .airportOfReceipt)
        self.dateOfScheduledArrival = try container.decodeIfPresent(String.self, forKey: .dateOfScheduledArrival)
        self.dateOfScheduledDeparture = try container.decodeIfPresent(String.self, forKey: .dateOfScheduledDeparture)
        self.deliveryToName = try container.decodeIfPresent(String.self, forKey: .deliveryToName)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.flight = try container.decodeIfPresent(String.self, forKey: .flight)
        self.notificationToName = try container.decodeIfPresent(String.self, forKey: .notificationToName)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
        self.receivedFromName = try container.decodeIfPresent(String.self, forKey: .receivedFromName)
        self.timeOfEvent = try container.decodeIfPresent(String.self, forKey: .timeOfEvent)
        self.timeOfEventTimePartQuality = try container.decodeIfPresent(String.self, forKey: .timeOfEventTimePartQuality)
        self.timeOfScheduledArrival = try container.decodeIfPresent(String.self, forKey: .timeOfScheduledArrival)
        self.timeOfScheduledDeparture = try container.decodeIfPresent(String.self, forKey: .timeOfScheduledDeparture)
        self.type = try container.decode(String.self, forKey: .type)
        self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.airportOfDelivery, forKey: .airportOfDelivery)
        try container.encodeIfPresent(self.airportOfNotification, forKey: .airportOfNotification)
        try container.encodeIfPresent(self.airportOfReceipt, forKey: .airportOfReceipt)
        try container.encodeIfPresent(self.dateOfScheduledArrival, forKey: .dateOfScheduledArrival)
        try container.encodeIfPresent(self.dateOfScheduledDeparture, forKey: .dateOfScheduledDeparture)
        try container.encodeIfPresent(self.deliveryToName, forKey: .deliveryToName)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.flight, forKey: .flight)
        try container.encodeIfPresent(self.notificationToName, forKey: .notificationToName)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
        try container.encodeIfPresent(self.receivedFromName, forKey: .receivedFromName)
        try container.encodeIfPresent(self.timeOfEvent, forKey: .timeOfEvent)
        try container.encodeIfPresent(self.timeOfEventTimePartQuality, forKey: .timeOfEventTimePartQuality)
        try container.encodeIfPresent(self.timeOfScheduledArrival, forKey: .timeOfScheduledArrival)
        try container.encodeIfPresent(self.timeOfScheduledDeparture, forKey: .timeOfScheduledDeparture)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airportOfDelivery
        case airportOfNotification
        case airportOfReceipt
        case dateOfScheduledArrival
        case dateOfScheduledDeparture
        case deliveryToName
        case destination
        case flight
        case notificationToName
        case numberOfPieces
        case origin
        case otherServiceInformation
        case receivedFromName
        case timeOfEvent
        case timeOfEventTimePartQuality
        case timeOfScheduledArrival
        case timeOfScheduledDeparture
        case type
        case weight
    }
}