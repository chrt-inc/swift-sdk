import Foundation

public struct FlightTrackRes: Codable, Hashable, Sendable {
    public let actualFlightPath: [FlightTrackPosition1]?
    public let faFlightId: String?
    public let lastRefreshAttemptAtTimestamp: Date?
    public let latestPosition: FlightTrackPosition1?
    public let plannedFlightPath: [FlightTrackPosition1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        actualFlightPath: [FlightTrackPosition1]? = nil,
        faFlightId: String? = nil,
        lastRefreshAttemptAtTimestamp: Date? = nil,
        latestPosition: FlightTrackPosition1? = nil,
        plannedFlightPath: [FlightTrackPosition1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.actualFlightPath = actualFlightPath
        self.faFlightId = faFlightId
        self.lastRefreshAttemptAtTimestamp = lastRefreshAttemptAtTimestamp
        self.latestPosition = latestPosition
        self.plannedFlightPath = plannedFlightPath
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.actualFlightPath = try container.decodeIfPresent([FlightTrackPosition1].self, forKey: .actualFlightPath)
        self.faFlightId = try container.decodeIfPresent(String.self, forKey: .faFlightId)
        self.lastRefreshAttemptAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastRefreshAttemptAtTimestamp)
        self.latestPosition = try container.decodeIfPresent(FlightTrackPosition1.self, forKey: .latestPosition)
        self.plannedFlightPath = try container.decodeIfPresent([FlightTrackPosition1].self, forKey: .plannedFlightPath)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.actualFlightPath, forKey: .actualFlightPath)
        try container.encodeIfPresent(self.faFlightId, forKey: .faFlightId)
        try container.encodeIfPresent(self.lastRefreshAttemptAtTimestamp, forKey: .lastRefreshAttemptAtTimestamp)
        try container.encodeIfPresent(self.latestPosition, forKey: .latestPosition)
        try container.encodeIfPresent(self.plannedFlightPath, forKey: .plannedFlightPath)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case actualFlightPath = "actual_flight_path"
        case faFlightId = "fa_flight_id"
        case lastRefreshAttemptAtTimestamp = "last_refresh_attempt_at_timestamp"
        case latestPosition = "latest_position"
        case plannedFlightPath = "planned_flight_path"
    }
}