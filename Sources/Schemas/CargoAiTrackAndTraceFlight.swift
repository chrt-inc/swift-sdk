import Foundation

/// The `flight` object nested inside a tracking event.
public struct CargoAiTrackAndTraceFlight: Codable, Hashable, Sendable {
    public let number: String?
    public let origin: String?
    public let destination: String?
    public let originCoord: String?
    public let destinationCoord: String?
    public let date: String?
    public let scheduledDeparture: String?
    public let estimatedDeparture: String?
    public let actualDeparture: String?
    public let scheduledArrival: String?
    public let estimatedArrival: String?
    public let actualArrival: String?
    public let carbonEmission: String?
    public let distance: String?
    public let duration: String?
    public let flightUlds: [CargoAiTrackAndTraceUld]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        number: String? = nil,
        origin: String? = nil,
        destination: String? = nil,
        originCoord: String? = nil,
        destinationCoord: String? = nil,
        date: String? = nil,
        scheduledDeparture: String? = nil,
        estimatedDeparture: String? = nil,
        actualDeparture: String? = nil,
        scheduledArrival: String? = nil,
        estimatedArrival: String? = nil,
        actualArrival: String? = nil,
        carbonEmission: String? = nil,
        distance: String? = nil,
        duration: String? = nil,
        flightUlds: [CargoAiTrackAndTraceUld]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.number = number
        self.origin = origin
        self.destination = destination
        self.originCoord = originCoord
        self.destinationCoord = destinationCoord
        self.date = date
        self.scheduledDeparture = scheduledDeparture
        self.estimatedDeparture = estimatedDeparture
        self.actualDeparture = actualDeparture
        self.scheduledArrival = scheduledArrival
        self.estimatedArrival = estimatedArrival
        self.actualArrival = actualArrival
        self.carbonEmission = carbonEmission
        self.distance = distance
        self.duration = duration
        self.flightUlds = flightUlds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.number = try container.decodeIfPresent(String.self, forKey: .number)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.originCoord = try container.decodeIfPresent(String.self, forKey: .originCoord)
        self.destinationCoord = try container.decodeIfPresent(String.self, forKey: .destinationCoord)
        self.date = try container.decodeIfPresent(String.self, forKey: .date)
        self.scheduledDeparture = try container.decodeIfPresent(String.self, forKey: .scheduledDeparture)
        self.estimatedDeparture = try container.decodeIfPresent(String.self, forKey: .estimatedDeparture)
        self.actualDeparture = try container.decodeIfPresent(String.self, forKey: .actualDeparture)
        self.scheduledArrival = try container.decodeIfPresent(String.self, forKey: .scheduledArrival)
        self.estimatedArrival = try container.decodeIfPresent(String.self, forKey: .estimatedArrival)
        self.actualArrival = try container.decodeIfPresent(String.self, forKey: .actualArrival)
        self.carbonEmission = try container.decodeIfPresent(String.self, forKey: .carbonEmission)
        self.distance = try container.decodeIfPresent(String.self, forKey: .distance)
        self.duration = try container.decodeIfPresent(String.self, forKey: .duration)
        self.flightUlds = try container.decodeIfPresent([CargoAiTrackAndTraceUld].self, forKey: .flightUlds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.number, forKey: .number)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.originCoord, forKey: .originCoord)
        try container.encodeIfPresent(self.destinationCoord, forKey: .destinationCoord)
        try container.encodeIfPresent(self.date, forKey: .date)
        try container.encodeIfPresent(self.scheduledDeparture, forKey: .scheduledDeparture)
        try container.encodeIfPresent(self.estimatedDeparture, forKey: .estimatedDeparture)
        try container.encodeIfPresent(self.actualDeparture, forKey: .actualDeparture)
        try container.encodeIfPresent(self.scheduledArrival, forKey: .scheduledArrival)
        try container.encodeIfPresent(self.estimatedArrival, forKey: .estimatedArrival)
        try container.encodeIfPresent(self.actualArrival, forKey: .actualArrival)
        try container.encodeIfPresent(self.carbonEmission, forKey: .carbonEmission)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.flightUlds, forKey: .flightUlds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case origin
        case destination
        case originCoord
        case destinationCoord
        case date
        case scheduledDeparture
        case estimatedDeparture
        case actualDeparture
        case scheduledArrival
        case estimatedArrival
        case actualArrival
        case carbonEmission
        case distance
        case duration
        case flightUlds
    }
}