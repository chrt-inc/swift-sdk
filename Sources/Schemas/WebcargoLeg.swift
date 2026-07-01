import Foundation

public struct WebcargoLeg: Codable, Hashable, Sendable {
    public let destination: WebcargoLocation?
    public let origin: WebcargoLocation?
    public let scheduledTimeOfArrival: String?
    public let scheduledTimeOfDeparture: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        destination: WebcargoLocation? = nil,
        origin: WebcargoLocation? = nil,
        scheduledTimeOfArrival: String? = nil,
        scheduledTimeOfDeparture: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.destination = destination
        self.origin = origin
        self.scheduledTimeOfArrival = scheduledTimeOfArrival
        self.scheduledTimeOfDeparture = scheduledTimeOfDeparture
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.destination = try container.decodeIfPresent(WebcargoLocation.self, forKey: .destination)
        self.origin = try container.decodeIfPresent(WebcargoLocation.self, forKey: .origin)
        self.scheduledTimeOfArrival = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfArrival)
        self.scheduledTimeOfDeparture = try container.decodeIfPresent(String.self, forKey: .scheduledTimeOfDeparture)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.scheduledTimeOfArrival, forKey: .scheduledTimeOfArrival)
        try container.encodeIfPresent(self.scheduledTimeOfDeparture, forKey: .scheduledTimeOfDeparture)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case destination
        case origin
        case scheduledTimeOfArrival = "scheduled_time_of_arrival"
        case scheduledTimeOfDeparture = "scheduled_time_of_departure"
    }
}