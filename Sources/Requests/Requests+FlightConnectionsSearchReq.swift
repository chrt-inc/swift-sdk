import Foundation

extension Requests {
    public struct FlightConnectionsSearchReq: Codable, Hashable, Sendable {
        /// Departure airport code (IATA preferred), e.g. 'EWR'.
        public let origin: String
        /// Arrival airport code (IATA preferred), e.g. 'LAX'.
        public let destination: String
        /// Whether local_date_time is a departure constraint (leaving after) or an arrival constraint (arriving before).
        public let searchBy: ConnectionSearchByEnum
        /// Return the earliest or latest flights within the search window.
        public let prefer: ConnectionSearchPreferenceEnum?
        /// Airport-local date+time (naive, no offset). Origin-local for DEPARTURE_TIME, destination-local for ARRIVAL_TIME.
        public let localDateTime: Date
        /// Search window size in hours relative to local_date_time. Default 6; Cirium max 24.
        public let numHours: Int?
        /// Max stops per itinerary. 0 returns nonstop only.
        public let maxConnections: Int?
        /// Max number of connections to return.
        public let maxResults: Int?
        /// Include airports sharing the origin's city code.
        public let allowNearbyDepartures: Bool?
        /// Include airports sharing the destination's city code.
        public let allowNearbyArrivals: Bool?
        /// Minimum layover in minutes; useful for cargo since published connect times are not auto-applied for cargo payloads.
        public let minimumConnectTimeMinutes: Int?
        /// Restrict to these airline codes.
        public let includeAirlines: [String]?
        /// Exclude these airline codes.
        public let excludeAirlines: [String]?
        /// Restrict connections to pass through these airports.
        public let includeAirports: [String]?
        /// Exclude these airports from connections.
        public let excludeAirports: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            origin: String,
            destination: String,
            searchBy: ConnectionSearchByEnum,
            prefer: ConnectionSearchPreferenceEnum? = nil,
            localDateTime: Date,
            numHours: Int? = nil,
            maxConnections: Int? = nil,
            maxResults: Int? = nil,
            allowNearbyDepartures: Bool? = nil,
            allowNearbyArrivals: Bool? = nil,
            minimumConnectTimeMinutes: Int? = nil,
            includeAirlines: [String]? = nil,
            excludeAirlines: [String]? = nil,
            includeAirports: [String]? = nil,
            excludeAirports: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.origin = origin
            self.destination = destination
            self.searchBy = searchBy
            self.prefer = prefer
            self.localDateTime = localDateTime
            self.numHours = numHours
            self.maxConnections = maxConnections
            self.maxResults = maxResults
            self.allowNearbyDepartures = allowNearbyDepartures
            self.allowNearbyArrivals = allowNearbyArrivals
            self.minimumConnectTimeMinutes = minimumConnectTimeMinutes
            self.includeAirlines = includeAirlines
            self.excludeAirlines = excludeAirlines
            self.includeAirports = includeAirports
            self.excludeAirports = excludeAirports
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.origin = try container.decode(String.self, forKey: .origin)
            self.destination = try container.decode(String.self, forKey: .destination)
            self.searchBy = try container.decode(ConnectionSearchByEnum.self, forKey: .searchBy)
            self.prefer = try container.decodeIfPresent(ConnectionSearchPreferenceEnum.self, forKey: .prefer)
            self.localDateTime = try container.decode(Date.self, forKey: .localDateTime)
            self.numHours = try container.decodeIfPresent(Int.self, forKey: .numHours)
            self.maxConnections = try container.decodeIfPresent(Int.self, forKey: .maxConnections)
            self.maxResults = try container.decodeIfPresent(Int.self, forKey: .maxResults)
            self.allowNearbyDepartures = try container.decodeIfPresent(Bool.self, forKey: .allowNearbyDepartures)
            self.allowNearbyArrivals = try container.decodeIfPresent(Bool.self, forKey: .allowNearbyArrivals)
            self.minimumConnectTimeMinutes = try container.decodeIfPresent(Int.self, forKey: .minimumConnectTimeMinutes)
            self.includeAirlines = try container.decodeIfPresent([String].self, forKey: .includeAirlines)
            self.excludeAirlines = try container.decodeIfPresent([String].self, forKey: .excludeAirlines)
            self.includeAirports = try container.decodeIfPresent([String].self, forKey: .includeAirports)
            self.excludeAirports = try container.decodeIfPresent([String].self, forKey: .excludeAirports)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.origin, forKey: .origin)
            try container.encode(self.destination, forKey: .destination)
            try container.encode(self.searchBy, forKey: .searchBy)
            try container.encodeIfPresent(self.prefer, forKey: .prefer)
            try container.encode(self.localDateTime, forKey: .localDateTime)
            try container.encodeIfPresent(self.numHours, forKey: .numHours)
            try container.encodeIfPresent(self.maxConnections, forKey: .maxConnections)
            try container.encodeIfPresent(self.maxResults, forKey: .maxResults)
            try container.encodeIfPresent(self.allowNearbyDepartures, forKey: .allowNearbyDepartures)
            try container.encodeIfPresent(self.allowNearbyArrivals, forKey: .allowNearbyArrivals)
            try container.encodeIfPresent(self.minimumConnectTimeMinutes, forKey: .minimumConnectTimeMinutes)
            try container.encodeIfPresent(self.includeAirlines, forKey: .includeAirlines)
            try container.encodeIfPresent(self.excludeAirlines, forKey: .excludeAirlines)
            try container.encodeIfPresent(self.includeAirports, forKey: .includeAirports)
            try container.encodeIfPresent(self.excludeAirports, forKey: .excludeAirports)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case origin
            case destination
            case searchBy = "search_by"
            case prefer
            case localDateTime = "local_date_time"
            case numHours = "num_hours"
            case maxConnections = "max_connections"
            case maxResults = "max_results"
            case allowNearbyDepartures = "allow_nearby_departures"
            case allowNearbyArrivals = "allow_nearby_arrivals"
            case minimumConnectTimeMinutes = "minimum_connect_time_minutes"
            case includeAirlines = "include_airlines"
            case excludeAirlines = "exclude_airlines"
            case includeAirports = "include_airports"
            case excludeAirports = "exclude_airports"
        }
    }
}