import Foundation

/// A single tracking event (BKD, RCS, DEP, ARR, RCF, NFD, DLV, ...).
public struct CargoAiTrackAndTraceEvent: Codable, Hashable, Sendable {
    public let code: String?
    public let description: String?
    public let eventDate: String?
    public let eventLocation: String?
    public let eventLocationCoord: String?
    public let flight: CargoAiTrackAndTraceFlight?
    public let weight: String?
    public let volume: String?
    public let pieces: String?
    public let additionalInformation: CargoAiTrackAndTraceAdditionalInformation?
    public let eventUlds: [CargoAiTrackAndTraceUld]?
    public let isPlanned: Bool?
    public let distance: String?
    public let origin: String?
    public let destination: String?
    public let time: String?
    public let flightNumber: String?
    public let scheduledDepartureDate: String?
    public let carbonEmission: String?
    public let originCoord: String?
    public let destinationCoord: String?
    public let isPredicted: Bool?
    public let predictedEventDate: String?
    public let predictedEventDateP90: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String? = nil,
        description: String? = nil,
        eventDate: String? = nil,
        eventLocation: String? = nil,
        eventLocationCoord: String? = nil,
        flight: CargoAiTrackAndTraceFlight? = nil,
        weight: String? = nil,
        volume: String? = nil,
        pieces: String? = nil,
        additionalInformation: CargoAiTrackAndTraceAdditionalInformation? = nil,
        eventUlds: [CargoAiTrackAndTraceUld]? = nil,
        isPlanned: Bool? = nil,
        distance: String? = nil,
        origin: String? = nil,
        destination: String? = nil,
        time: String? = nil,
        flightNumber: String? = nil,
        scheduledDepartureDate: String? = nil,
        carbonEmission: String? = nil,
        originCoord: String? = nil,
        destinationCoord: String? = nil,
        isPredicted: Bool? = nil,
        predictedEventDate: String? = nil,
        predictedEventDateP90: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.description = description
        self.eventDate = eventDate
        self.eventLocation = eventLocation
        self.eventLocationCoord = eventLocationCoord
        self.flight = flight
        self.weight = weight
        self.volume = volume
        self.pieces = pieces
        self.additionalInformation = additionalInformation
        self.eventUlds = eventUlds
        self.isPlanned = isPlanned
        self.distance = distance
        self.origin = origin
        self.destination = destination
        self.time = time
        self.flightNumber = flightNumber
        self.scheduledDepartureDate = scheduledDepartureDate
        self.carbonEmission = carbonEmission
        self.originCoord = originCoord
        self.destinationCoord = destinationCoord
        self.isPredicted = isPredicted
        self.predictedEventDate = predictedEventDate
        self.predictedEventDateP90 = predictedEventDateP90
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.eventDate = try container.decodeIfPresent(String.self, forKey: .eventDate)
        self.eventLocation = try container.decodeIfPresent(String.self, forKey: .eventLocation)
        self.eventLocationCoord = try container.decodeIfPresent(String.self, forKey: .eventLocationCoord)
        self.flight = try container.decodeIfPresent(CargoAiTrackAndTraceFlight.self, forKey: .flight)
        self.weight = try container.decodeIfPresent(String.self, forKey: .weight)
        self.volume = try container.decodeIfPresent(String.self, forKey: .volume)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.additionalInformation = try container.decodeIfPresent(CargoAiTrackAndTraceAdditionalInformation.self, forKey: .additionalInformation)
        self.eventUlds = try container.decodeIfPresent([CargoAiTrackAndTraceUld].self, forKey: .eventUlds)
        self.isPlanned = try container.decodeIfPresent(Bool.self, forKey: .isPlanned)
        self.distance = try container.decodeIfPresent(String.self, forKey: .distance)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.time = try container.decodeIfPresent(String.self, forKey: .time)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.scheduledDepartureDate = try container.decodeIfPresent(String.self, forKey: .scheduledDepartureDate)
        self.carbonEmission = try container.decodeIfPresent(String.self, forKey: .carbonEmission)
        self.originCoord = try container.decodeIfPresent(String.self, forKey: .originCoord)
        self.destinationCoord = try container.decodeIfPresent(String.self, forKey: .destinationCoord)
        self.isPredicted = try container.decodeIfPresent(Bool.self, forKey: .isPredicted)
        self.predictedEventDate = try container.decodeIfPresent(String.self, forKey: .predictedEventDate)
        self.predictedEventDateP90 = try container.decodeIfPresent(String.self, forKey: .predictedEventDateP90)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.eventDate, forKey: .eventDate)
        try container.encodeIfPresent(self.eventLocation, forKey: .eventLocation)
        try container.encodeIfPresent(self.eventLocationCoord, forKey: .eventLocationCoord)
        try container.encodeIfPresent(self.flight, forKey: .flight)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.additionalInformation, forKey: .additionalInformation)
        try container.encodeIfPresent(self.eventUlds, forKey: .eventUlds)
        try container.encodeIfPresent(self.isPlanned, forKey: .isPlanned)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.time, forKey: .time)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.scheduledDepartureDate, forKey: .scheduledDepartureDate)
        try container.encodeIfPresent(self.carbonEmission, forKey: .carbonEmission)
        try container.encodeIfPresent(self.originCoord, forKey: .originCoord)
        try container.encodeIfPresent(self.destinationCoord, forKey: .destinationCoord)
        try container.encodeIfPresent(self.isPredicted, forKey: .isPredicted)
        try container.encodeIfPresent(self.predictedEventDate, forKey: .predictedEventDate)
        try container.encodeIfPresent(self.predictedEventDateP90, forKey: .predictedEventDateP90)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case description
        case eventDate
        case eventLocation
        case eventLocationCoord
        case flight
        case weight
        case volume
        case pieces
        case additionalInformation
        case eventUlds
        case isPlanned
        case distance
        case origin
        case destination
        case time
        case flightNumber
        case scheduledDepartureDate
        case carbonEmission
        case originCoord
        case destinationCoord
        case isPredicted
        case predictedEventDate
        case predictedEventDateP90
    }
}