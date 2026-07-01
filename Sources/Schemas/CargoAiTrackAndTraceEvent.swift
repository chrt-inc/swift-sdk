import Foundation

/// A single tracking event (BKD, RCS, DEP, ARR, RCF, NFD, DLV, ...).
public struct CargoAiTrackAndTraceEvent: Codable, Hashable, Sendable {
    public let additionalInformation: CargoAiTrackAndTraceAdditionalInformation?
    public let carbonEmission: String?
    public let code: String?
    public let description: String?
    public let destination: String?
    public let destinationCoord: String?
    public let distance: String?
    public let eventDate: String?
    public let eventLocation: String?
    public let eventLocationCoord: String?
    public let eventUlds: [CargoAiTrackAndTraceUld]?
    public let flight: CargoAiTrackAndTraceFlight?
    public let flightNumber: String?
    public let isPlanned: Bool?
    public let isPredicted: Bool?
    public let origin: String?
    public let originCoord: String?
    public let pieces: String?
    public let predictedEventDate: String?
    public let predictedEventDateP90: String?
    public let scheduledDepartureDate: String?
    public let time: String?
    public let volume: String?
    public let weight: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        additionalInformation: CargoAiTrackAndTraceAdditionalInformation? = nil,
        carbonEmission: String? = nil,
        code: String? = nil,
        description: String? = nil,
        destination: String? = nil,
        destinationCoord: String? = nil,
        distance: String? = nil,
        eventDate: String? = nil,
        eventLocation: String? = nil,
        eventLocationCoord: String? = nil,
        eventUlds: [CargoAiTrackAndTraceUld]? = nil,
        flight: CargoAiTrackAndTraceFlight? = nil,
        flightNumber: String? = nil,
        isPlanned: Bool? = nil,
        isPredicted: Bool? = nil,
        origin: String? = nil,
        originCoord: String? = nil,
        pieces: String? = nil,
        predictedEventDate: String? = nil,
        predictedEventDateP90: String? = nil,
        scheduledDepartureDate: String? = nil,
        time: String? = nil,
        volume: String? = nil,
        weight: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.additionalInformation = additionalInformation
        self.carbonEmission = carbonEmission
        self.code = code
        self.description = description
        self.destination = destination
        self.destinationCoord = destinationCoord
        self.distance = distance
        self.eventDate = eventDate
        self.eventLocation = eventLocation
        self.eventLocationCoord = eventLocationCoord
        self.eventUlds = eventUlds
        self.flight = flight
        self.flightNumber = flightNumber
        self.isPlanned = isPlanned
        self.isPredicted = isPredicted
        self.origin = origin
        self.originCoord = originCoord
        self.pieces = pieces
        self.predictedEventDate = predictedEventDate
        self.predictedEventDateP90 = predictedEventDateP90
        self.scheduledDepartureDate = scheduledDepartureDate
        self.time = time
        self.volume = volume
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.additionalInformation = try container.decodeIfPresent(CargoAiTrackAndTraceAdditionalInformation.self, forKey: .additionalInformation)
        self.carbonEmission = try container.decodeIfPresent(String.self, forKey: .carbonEmission)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.destinationCoord = try container.decodeIfPresent(String.self, forKey: .destinationCoord)
        self.distance = try container.decodeIfPresent(String.self, forKey: .distance)
        self.eventDate = try container.decodeIfPresent(String.self, forKey: .eventDate)
        self.eventLocation = try container.decodeIfPresent(String.self, forKey: .eventLocation)
        self.eventLocationCoord = try container.decodeIfPresent(String.self, forKey: .eventLocationCoord)
        self.eventUlds = try container.decodeIfPresent([CargoAiTrackAndTraceUld].self, forKey: .eventUlds)
        self.flight = try container.decodeIfPresent(CargoAiTrackAndTraceFlight.self, forKey: .flight)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.isPlanned = try container.decodeIfPresent(Bool.self, forKey: .isPlanned)
        self.isPredicted = try container.decodeIfPresent(Bool.self, forKey: .isPredicted)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.originCoord = try container.decodeIfPresent(String.self, forKey: .originCoord)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.predictedEventDate = try container.decodeIfPresent(String.self, forKey: .predictedEventDate)
        self.predictedEventDateP90 = try container.decodeIfPresent(String.self, forKey: .predictedEventDateP90)
        self.scheduledDepartureDate = try container.decodeIfPresent(String.self, forKey: .scheduledDepartureDate)
        self.time = try container.decodeIfPresent(String.self, forKey: .time)
        self.volume = try container.decodeIfPresent(String.self, forKey: .volume)
        self.weight = try container.decodeIfPresent(String.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.additionalInformation, forKey: .additionalInformation)
        try container.encodeIfPresent(self.carbonEmission, forKey: .carbonEmission)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.destinationCoord, forKey: .destinationCoord)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.eventDate, forKey: .eventDate)
        try container.encodeIfPresent(self.eventLocation, forKey: .eventLocation)
        try container.encodeIfPresent(self.eventLocationCoord, forKey: .eventLocationCoord)
        try container.encodeIfPresent(self.eventUlds, forKey: .eventUlds)
        try container.encodeIfPresent(self.flight, forKey: .flight)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.isPlanned, forKey: .isPlanned)
        try container.encodeIfPresent(self.isPredicted, forKey: .isPredicted)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.originCoord, forKey: .originCoord)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.predictedEventDate, forKey: .predictedEventDate)
        try container.encodeIfPresent(self.predictedEventDateP90, forKey: .predictedEventDateP90)
        try container.encodeIfPresent(self.scheduledDepartureDate, forKey: .scheduledDepartureDate)
        try container.encodeIfPresent(self.time, forKey: .time)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case additionalInformation
        case carbonEmission
        case code
        case description
        case destination
        case destinationCoord
        case distance
        case eventDate
        case eventLocation
        case eventLocationCoord
        case eventUlds
        case flight
        case flightNumber
        case isPlanned
        case isPredicted
        case origin
        case originCoord
        case pieces
        case predictedEventDate
        case predictedEventDateP90
        case scheduledDepartureDate
        case time
        case volume
        case weight
    }
}