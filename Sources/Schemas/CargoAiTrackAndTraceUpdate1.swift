import Foundation

public struct CargoAiTrackAndTraceUpdate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awb: String
    public let origin: String?
    public let destination: String?
    public let status: String?
    public let weight: String?
    public let pieces: String?
    public let volume: String?
    public let carbonEmission: String?
    public let alerts: CargoAiTrackAndTraceAlert?
    public let oldEvents: [CargoAiTrackAndTraceEvent]?
    public let newEvents: [CargoAiTrackAndTraceEvent]?
    public let events: [CargoAiTrackAndTraceEvent]?
    public let id: String
    public let receivedAt: Date
    public let source: CargoAiTrackAndTraceUpdateSourceEnum
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        awb: String,
        origin: String? = nil,
        destination: String? = nil,
        status: String? = nil,
        weight: String? = nil,
        pieces: String? = nil,
        volume: String? = nil,
        carbonEmission: String? = nil,
        alerts: CargoAiTrackAndTraceAlert? = nil,
        oldEvents: [CargoAiTrackAndTraceEvent]? = nil,
        newEvents: [CargoAiTrackAndTraceEvent]? = nil,
        events: [CargoAiTrackAndTraceEvent]? = nil,
        id: String,
        receivedAt: Date,
        source: CargoAiTrackAndTraceUpdateSourceEnum,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.awb = awb
        self.origin = origin
        self.destination = destination
        self.status = status
        self.weight = weight
        self.pieces = pieces
        self.volume = volume
        self.carbonEmission = carbonEmission
        self.alerts = alerts
        self.oldEvents = oldEvents
        self.newEvents = newEvents
        self.events = events
        self.id = id
        self.receivedAt = receivedAt
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.awb = try container.decode(String.self, forKey: .awb)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.weight = try container.decodeIfPresent(String.self, forKey: .weight)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.volume = try container.decodeIfPresent(String.self, forKey: .volume)
        self.carbonEmission = try container.decodeIfPresent(String.self, forKey: .carbonEmission)
        self.alerts = try container.decodeIfPresent(CargoAiTrackAndTraceAlert.self, forKey: .alerts)
        self.oldEvents = try container.decodeIfPresent([CargoAiTrackAndTraceEvent].self, forKey: .oldEvents)
        self.newEvents = try container.decodeIfPresent([CargoAiTrackAndTraceEvent].self, forKey: .newEvents)
        self.events = try container.decodeIfPresent([CargoAiTrackAndTraceEvent].self, forKey: .events)
        self.id = try container.decode(String.self, forKey: .id)
        self.receivedAt = try container.decode(Date.self, forKey: .receivedAt)
        self.source = try container.decode(CargoAiTrackAndTraceUpdateSourceEnum.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.awb, forKey: .awb)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.carbonEmission, forKey: .carbonEmission)
        try container.encodeIfPresent(self.alerts, forKey: .alerts)
        try container.encodeIfPresent(self.oldEvents, forKey: .oldEvents)
        try container.encodeIfPresent(self.newEvents, forKey: .newEvents)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.receivedAt, forKey: .receivedAt)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion
        case awb
        case origin
        case destination
        case status
        case weight
        case pieces
        case volume
        case carbonEmission
        case alerts
        case oldEvents
        case newEvents
        case events
        case id = "_id"
        case receivedAt
        case source
    }
}