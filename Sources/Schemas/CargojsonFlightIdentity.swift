import Foundation

/// [WEBCARGO] From <ItineraryNumber>, e.g. 'AC0858'.
/// Pattern: [A-Z][A-Z0-9][0-9]{1,4}[A-Z]?
/// Carrier prefix + zero-padded flight number.
public struct CargojsonFlightIdentity: Codable, Hashable, Sendable {
    public let flight: String
    public let scheduledDate: String
    public let scheduledTime: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flight: String,
        scheduledDate: String,
        scheduledTime: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flight = flight
        self.scheduledDate = scheduledDate
        self.scheduledTime = scheduledTime
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flight = try container.decode(String.self, forKey: .flight)
        self.scheduledDate = try container.decode(String.self, forKey: .scheduledDate)
        self.scheduledTime = try container.decodeIfPresent(String.self, forKey: .scheduledTime)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.flight, forKey: .flight)
        try container.encode(self.scheduledDate, forKey: .scheduledDate)
        try container.encodeIfPresent(self.scheduledTime, forKey: .scheduledTime)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flight
        case scheduledDate
        case scheduledTime
    }
}