import Foundation

/// The 'flight' object nested inside a FlightAware alert POST payload.
public struct FlightAwareAlertFlight: Codable, Hashable, Sendable {
    public let faFlightId: String
    public let ident: String
    public let registration: String?
    public let aircraftType: String?
    public let origin: String?
    public let destination: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        faFlightId: String,
        ident: String,
        registration: String? = nil,
        aircraftType: String? = nil,
        origin: String? = nil,
        destination: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.faFlightId = faFlightId
        self.ident = ident
        self.registration = registration
        self.aircraftType = aircraftType
        self.origin = origin
        self.destination = destination
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.faFlightId = try container.decode(String.self, forKey: .faFlightId)
        self.ident = try container.decode(String.self, forKey: .ident)
        self.registration = try container.decodeIfPresent(String.self, forKey: .registration)
        self.aircraftType = try container.decodeIfPresent(String.self, forKey: .aircraftType)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.faFlightId, forKey: .faFlightId)
        try container.encode(self.ident, forKey: .ident)
        try container.encodeIfPresent(self.registration, forKey: .registration)
        try container.encodeIfPresent(self.aircraftType, forKey: .aircraftType)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.destination, forKey: .destination)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case faFlightId = "fa_flight_id"
        case ident
        case registration
        case aircraftType = "aircraft_type"
        case origin
        case destination
    }
}