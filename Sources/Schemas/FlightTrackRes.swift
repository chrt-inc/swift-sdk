import Foundation

/// Positional track for a flight leg: live trail + (optional) planned path.
/// 
/// `positions` is the flown breadcrumb trail (present once airborne);
/// `waypoints` / `legacy_route` are the planned path (present once Cirium has
/// the filed flight plan, ~24h before departure). Everything is empty when the
/// leg has no resolvable Cirium `flightId` or Cirium has no track yet — the
/// endpoint never errors on a missing track (fail-soft, like the status route).
public struct FlightTrackRes: Codable, Hashable, Sendable {
    public let bearing: Double?
    public let ciriumFlightId: Int?
    public let heading: Double?
    public let legacyRoute: String?
    public let positions: [FlightTrackPosition1]?
    public let waypoints: [FlightTrackWaypoint1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bearing: Double? = nil,
        ciriumFlightId: Int? = nil,
        heading: Double? = nil,
        legacyRoute: String? = nil,
        positions: [FlightTrackPosition1]? = nil,
        waypoints: [FlightTrackWaypoint1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bearing = bearing
        self.ciriumFlightId = ciriumFlightId
        self.heading = heading
        self.legacyRoute = legacyRoute
        self.positions = positions
        self.waypoints = waypoints
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bearing = try container.decodeIfPresent(Double.self, forKey: .bearing)
        self.ciriumFlightId = try container.decodeIfPresent(Int.self, forKey: .ciriumFlightId)
        self.heading = try container.decodeIfPresent(Double.self, forKey: .heading)
        self.legacyRoute = try container.decodeIfPresent(String.self, forKey: .legacyRoute)
        self.positions = try container.decodeIfPresent([FlightTrackPosition1].self, forKey: .positions)
        self.waypoints = try container.decodeIfPresent([FlightTrackWaypoint1].self, forKey: .waypoints)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bearing, forKey: .bearing)
        try container.encodeIfPresent(self.ciriumFlightId, forKey: .ciriumFlightId)
        try container.encodeIfPresent(self.heading, forKey: .heading)
        try container.encodeIfPresent(self.legacyRoute, forKey: .legacyRoute)
        try container.encodeIfPresent(self.positions, forKey: .positions)
        try container.encodeIfPresent(self.waypoints, forKey: .waypoints)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bearing
        case ciriumFlightId = "cirium_flight_id"
        case heading
        case legacyRoute = "legacy_route"
        case positions
        case waypoints
    }
}