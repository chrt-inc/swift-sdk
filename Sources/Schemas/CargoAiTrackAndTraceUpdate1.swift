import Foundation

public struct CargoAiTrackAndTraceUpdate1: Codable, Hashable, Sendable {
    public let id: String
    public let alerts: CargoAiTrackAndTraceAlert?
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awb: String
    public let carbonEmission: String?
    public let destination: String?
    public let events: [CargoAiTrackAndTraceEvent]?
    public let newEvents: [CargoAiTrackAndTraceEvent]?
    public let oldEvents: [CargoAiTrackAndTraceEvent]?
    public let origin: String?
    public let pieces: String?
    public let receivedAt: Date
    public let schemaVersion: Int?
    public let source: CargoAiTrackAndTraceUpdateSourceEnum
    public let status: String?
    public let volume: String?
    public let weight: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        alerts: CargoAiTrackAndTraceAlert? = nil,
        awb: String,
        carbonEmission: String? = nil,
        destination: String? = nil,
        events: [CargoAiTrackAndTraceEvent]? = nil,
        newEvents: [CargoAiTrackAndTraceEvent]? = nil,
        oldEvents: [CargoAiTrackAndTraceEvent]? = nil,
        origin: String? = nil,
        pieces: String? = nil,
        receivedAt: Date,
        schemaVersion: Int? = nil,
        source: CargoAiTrackAndTraceUpdateSourceEnum,
        status: String? = nil,
        volume: String? = nil,
        weight: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.alerts = alerts
        self.awb = awb
        self.carbonEmission = carbonEmission
        self.destination = destination
        self.events = events
        self.newEvents = newEvents
        self.oldEvents = oldEvents
        self.origin = origin
        self.pieces = pieces
        self.receivedAt = receivedAt
        self.schemaVersion = schemaVersion
        self.source = source
        self.status = status
        self.volume = volume
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.alerts = try container.decodeIfPresent(CargoAiTrackAndTraceAlert.self, forKey: .alerts)
        self.awb = try container.decode(String.self, forKey: .awb)
        self.carbonEmission = try container.decodeIfPresent(String.self, forKey: .carbonEmission)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.events = try container.decodeIfPresent([CargoAiTrackAndTraceEvent].self, forKey: .events)
        self.newEvents = try container.decodeIfPresent([CargoAiTrackAndTraceEvent].self, forKey: .newEvents)
        self.oldEvents = try container.decodeIfPresent([CargoAiTrackAndTraceEvent].self, forKey: .oldEvents)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.receivedAt = try container.decode(Date.self, forKey: .receivedAt)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.source = try container.decode(CargoAiTrackAndTraceUpdateSourceEnum.self, forKey: .source)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.volume = try container.decodeIfPresent(String.self, forKey: .volume)
        self.weight = try container.decodeIfPresent(String.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.alerts, forKey: .alerts)
        try container.encode(self.awb, forKey: .awb)
        try container.encodeIfPresent(self.carbonEmission, forKey: .carbonEmission)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encodeIfPresent(self.newEvents, forKey: .newEvents)
        try container.encodeIfPresent(self.oldEvents, forKey: .oldEvents)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encode(self.receivedAt, forKey: .receivedAt)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.source, forKey: .source)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case alerts
        case awb
        case carbonEmission
        case destination
        case events
        case newEvents
        case oldEvents
        case origin
        case pieces
        case receivedAt
        case schemaVersion
        case source
        case status
        case volume
        case weight
    }
}