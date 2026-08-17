import Foundation

public struct AtlasStopResponse1: Codable, Hashable, Sendable {
    public let destination: String?
    public let events: [AtlasEventResponse1]?
    public let origin: String?
    public let sequence: Int?
    public let truck: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        destination: String? = nil,
        events: [AtlasEventResponse1]? = nil,
        origin: String? = nil,
        sequence: Int? = nil,
        truck: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.destination = destination
        self.events = events
        self.origin = origin
        self.sequence = sequence
        self.truck = truck
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.events = try container.decodeIfPresent([AtlasEventResponse1].self, forKey: .events)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.sequence = try container.decodeIfPresent(Int.self, forKey: .sequence)
        self.truck = try container.decodeIfPresent(String.self, forKey: .truck)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.events, forKey: .events)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.sequence, forKey: .sequence)
        try container.encodeIfPresent(self.truck, forKey: .truck)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case destination
        case events
        case origin
        case sequence
        case truck
    }
}