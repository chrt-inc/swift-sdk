import Foundation

/// The 'flight' object nested inside a FlightAware alert POST payload.
public struct FlightAwareAlertFlight: Codable, Hashable, Sendable {
    public let aircraftType: String?
    public let destination: String?
    public let faFlightId: String
    public let ident: String
    public let origin: String?
    public let registration: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        aircraftType: String? = nil,
        destination: String? = nil,
        faFlightId: String,
        ident: String,
        origin: String? = nil,
        registration: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.aircraftType = aircraftType
        self.destination = destination
        self.faFlightId = faFlightId
        self.ident = ident
        self.origin = origin
        self.registration = registration
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.aircraftType = try container.decodeIfPresent(String.self, forKey: .aircraftType)
        self.destination = try container.decodeIfPresent(String.self, forKey: .destination)
        self.faFlightId = try container.decode(String.self, forKey: .faFlightId)
        self.ident = try container.decode(String.self, forKey: .ident)
        self.origin = try container.decodeIfPresent(String.self, forKey: .origin)
        self.registration = try container.decodeIfPresent(String.self, forKey: .registration)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.aircraftType, forKey: .aircraftType)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encode(self.faFlightId, forKey: .faFlightId)
        try container.encode(self.ident, forKey: .ident)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.registration, forKey: .registration)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case aircraftType = "aircraft_type"
        case destination
        case faFlightId = "fa_flight_id"
        case ident
        case origin
        case registration
    }
}