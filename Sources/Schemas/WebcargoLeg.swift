import Foundation

public struct WebcargoLeg: Codable, Hashable, Sendable {
    public let origin: WebcargoLocation?
    public let destination: WebcargoLocation?
    public let scheduledTimeOfDeparture: String?
    public let scheduledTimeOfArrival: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        origin: WebcargoLocation? = nil,
        destination: WebcargoLocation? = nil,
        scheduledTimeOfDeparture: String? = nil,
        scheduledTimeOfArrival: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.origin = origin
        self.destination = destination
        self.scheduledTimeOfDeparture = scheduledTimeOfDeparture
        self.scheduledTimeOfArrival = scheduledTimeOfArrival
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.origin = try container.decodeIfPresent(WebcargoLocation.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(WebcargoLocation.self, forKey: .destination)
        self.scheduledTimeOfDeparture = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfDeparture)
        self.scheduledTimeOfArrival = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfArrival)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.scheduledTimeOfDeparture, forKey: .scheduledTimeOfDeparture)
        try container.encodeIfPresent(self.scheduledTimeOfArrival, forKey: .scheduledTimeOfArrival)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case origin
        case destination
        case scheduledTimeOfDeparture = "scheduled_time_of_departure"
        case scheduledTimeOfArrival = "scheduled_time_of_arrival"
    }
}