import Foundation

/// Positional track for a flight leg: live trail + (optional) planned path.
/// 
/// `positions` is the flown breadcrumb trail (present once airborne);
/// `waypoints` / `legacy_route` are the planned path (present once Cirium has
/// the filed flight plan, ~24h before departure). Everything is empty when the
/// leg has no resolvable Cirium `flightId` or Cirium has no track yet — the
/// endpoint never errors on a missing track (fail-soft, like the status route).
public struct FlightTrackRes: Codable, Hashable, Sendable {
    public let ciriumFlightId: Int?
    public let positions: [FlightTrackPosition]?
    public let waypoints: [FlightTrackWaypoint]?
    public let legacyRoute: String?
    public let bearing: Double?
    public let heading: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ciriumFlightId: Int? = nil,
        positions: [FlightTrackPosition]? = nil,
        waypoints: [FlightTrackWaypoint]? = nil,
        legacyRoute: String? = nil,
        bearing: Double? = nil,
        heading: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ciriumFlightId = ciriumFlightId
        self.positions = positions
        self.waypoints = waypoints
        self.legacyRoute = legacyRoute
        self.bearing = bearing
        self.heading = heading
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ciriumFlightId = try container.decodeIfPresent(Int.self, forKey: .ciriumFlightId)
        self.positions = try container.decodeIfPresent([FlightTrackPosition].self, forKey: .positions)
        self.waypoints = try container.decodeIfPresent([FlightTrackWaypoint].self, forKey: .waypoints)
        self.legacyRoute = try container.decodeIfPresent(String.self, forKey: .legacyRoute)
        self.bearing = try container.decodeIfPresent(Double.self, forKey: .bearing)
        self.heading = try container.decodeIfPresent(Double.self, forKey: .heading)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.ciriumFlightId, forKey: .ciriumFlightId)
        try container.encodeIfPresent(self.positions, forKey: .positions)
        try container.encodeIfPresent(self.waypoints, forKey: .waypoints)
        try container.encodeIfPresent(self.legacyRoute, forKey: .legacyRoute)
        try container.encodeIfPresent(self.bearing, forKey: .bearing)
        try container.encodeIfPresent(self.heading, forKey: .heading)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ciriumFlightId = "cirium_flight_id"
        case positions
        case waypoints
        case legacyRoute = "legacy_route"
        case bearing
        case heading
    }
}