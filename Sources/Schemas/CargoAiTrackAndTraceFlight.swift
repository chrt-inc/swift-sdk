import Foundation

/// The `flight` object nested inside a tracking event.
public struct CargoAiTrackAndTraceFlight: Codable, Hashable, Sendable {
    public let actualArrival: String?
    public let actualDeparture: String?
    public let carbonEmission: String?
    public let date: String?
    public let destination: String?
    public let destinationCoord: String?
    public let distance: String?
    public let duration: String?
    public let estimatedArrival: String?
    public let estimatedDeparture: String?
    public let flightUlds: [CargoAiTrackAndTraceUld]?
    public let number: String?
    public let origin: String?
    public let originCoord: String?
    public let scheduledArrival: String?
    public let scheduledDeparture: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        actualArrival: String? = nil,
        actualDeparture: String? = nil,
        carbonEmission: String? = nil,
        date: String? = nil,
        destination: String? = nil,
        destinationCoord: String? = nil,
        distance: String? = nil,
        duration: String? = nil,
        estimatedArrival: String? = nil,
        estimatedDeparture: String? = nil,
        flightUlds: [CargoAiTrackAndTraceUld]? = nil,
        number: String? = nil,
        origin: String? = nil,
        originCoord: String? = nil,
        scheduledArrival: String? = nil,
        scheduledDeparture: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.actualArrival = actualArrival
        self.actualDeparture = actualDeparture
        self.carbonEmission = carbonEmission
        self.date = date
        self.destination = destination
        self.destinationCoord = destinationCoord
        self.distance = distance
        self.duration = duration
        self.estimatedArrival = estimatedArrival
        self.estimatedDeparture = estimatedDeparture
        self.flightUlds = flightUlds
        self.number = number
        self.origin = origin
        self.originCoord = originCoord
        self.scheduledArrival = scheduledArrival
        self.scheduledDeparture = scheduledDeparture
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.actualArrival = try container.decodeIfPresent(String.self, forKey: .actualArrival)
        self.actualDeparture = try container.decodeIfPresent(String.self, forKey: .actualDeparture)
        self.carbonEmission = try container.decodeIfPresent(String.self, forKey: .carbonEmission)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.destinationCoord = try container.decodeIfPresent(String.self, forKey: .destinationCoord)
        self.distance = try container.decodeIfPresent(String.self, forKey: .distance)
        self.duration = try container.decodeIfPresent(String.self, forKey: .duration)
        self.estimatedArrival = try container.decodeIfPresent(String.self, forKey: .estimatedArrival)
        self.estimatedDeparture = try container.decodeIfPresent(String.self, forKey: .estimatedDeparture)
        self.flightUlds = try container.decodeIfPresent([CargoAiTrackAndTraceUld].self, forKey: .flightUlds)
        self.number = try container.decodeIfPresent(String.self, forKey: .number)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.originCoord = try container.decodeIfPresent(String.self, forKey: .originCoord)
        self.scheduledArrival = try container.decodeIfPresent(String.self, forKey: .scheduledArrival)
        self.scheduledDeparture = try container.decodeIfPresent(String.self, forKey: .scheduledDeparture)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.actualArrival, forKey: .actualArrival)
        try container.encodeIfPresent(self.actualDeparture, forKey: .actualDeparture)
        try container.encodeIfPresent(self.carbonEmission, forKey: .carbonEmission)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.destinationCoord, forKey: .destinationCoord)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.estimatedArrival, forKey: .estimatedArrival)
        try container.encodeIfPresent(self.estimatedDeparture, forKey: .estimatedDeparture)
        try container.encodeIfPresent(self.flightUlds, forKey: .flightUlds)
        try container.encodeIfPresent(self.number, forKey: .number)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.originCoord, forKey: .originCoord)
        try container.encodeIfPresent(self.scheduledArrival, forKey: .scheduledArrival)
        try container.encodeIfPresent(self.scheduledDeparture, forKey: .scheduledDeparture)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case actualArrival
        case actualDeparture
        case carbonEmission
        case date
        case destination
        case destinationCoord
        case distance
        case duration
        case estimatedArrival
        case estimatedDeparture
        case flightUlds
        case number
        case origin
        case originCoord
        case scheduledArrival
        case scheduledDeparture
    }
}