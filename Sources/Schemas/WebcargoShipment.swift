import Foundation

public struct WebcargoShipment: Codable, Hashable, Sendable {
    public let timeOfAvailability: String?
    public let latestAcceptanceDate: String?
    public let transportMode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        timeOfAvailability: String? = nil,
        latestAcceptanceDate: String? = nil,
        transportMode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.timeOfAvailability = timeOfAvailability
        self.latestAcceptanceDate = latestAcceptanceDate
        self.transportMode = transportMode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.timeOfAvailability = try container.decodeIfPresent(String.self, forKey: .timeOfAvailability)
        self.latestAcceptanceDate = try container.decodeIfPresent(String.self, forKey: .latestAcceptanceDate)
        self.transportMode = try container.decodeIfPresent(String.self, forKey: .transportMode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.timeOfAvailability, forKey: .timeOfAvailability)
        try container.encodeIfPresent(self.latestAcceptanceDate, forKey: .latestAcceptanceDate)
        try container.encodeIfPresent(self.transportMode, forKey: .transportMode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case timeOfAvailability = "time_of_availability"
        case latestAcceptanceDate = "latest_acceptance_date"
        case transportMode = "transport_mode"
    }
}