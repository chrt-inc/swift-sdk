import Foundation

extension Requests {
    public struct FlightConnectionsSearchReq: Codable, Hashable, Sendable {
        /// Include airports sharing the destination's city code.
        public let allowNearbyArrivals: Bool?
        /// Include airports sharing the origin's city code.
        public let allowNearbyDepartures: Bool?
        /// Arrival airport code (IATA preferred), e.g. 'LAX'.
        public let destination: String
        /// Exclude these airline codes.
        public let excludeAirlines: [String]?
        /// Exclude these airports from connections.
        public let excludeAirports: [String]?
        /// Restrict to these airline codes.
        public let includeAirlines: [String]?
        /// Restrict connections to pass through these airports.
        public let includeAirports: [String]?
        /// Airport-local date+time (naive, no offset). Origin-local for DEPARTURE_TIME, destination-local for ARRIVAL_TIME.
        public let localDateTime: Date
        /// Max stops per itinerary. 0 returns nonstop only.
        public let maxConnections: Int?
        /// Max number of connections to return.
        public let maxResults: Int?
        /// Minimum layover in minutes; useful for cargo since published connect times are not auto-applied for cargo payloads.
        public let minimumConnectTimeMinutes: Int?
        /// Search window size in hours relative to local_date_time. Default 6; Cirium max 24.
        public let numHours: Int?
        /// Departure airport code (IATA preferred), e.g. 'EWR'.
        public let origin: String
        /// Return the earliest or latest flights within the search window.
        public let prefer: ConnectionSearchPreferenceEnum?
        /// Whether local_date_time is a departure constraint (leaving after) or an arrival constraint (arriving before).
        public let searchBy: ConnectionSearchByEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            allowNearbyArrivals: Bool? = nil,
            allowNearbyDepartures: Bool? = nil,
            destination: String,
            excludeAirlines: [String]? = nil,
            excludeAirports: [String]? = nil,
            includeAirlines: [String]? = nil,
            includeAirports: [String]? = nil,
            localDateTime: Date,
            maxConnections: Int? = nil,
            maxResults: Int? = nil,
            minimumConnectTimeMinutes: Int? = nil,
            numHours: Int? = nil,
            origin: String,
            prefer: ConnectionSearchPreferenceEnum? = nil,
            searchBy: ConnectionSearchByEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.allowNearbyArrivals = allowNearbyArrivals
            self.allowNearbyDepartures = allowNearbyDepartures
            self.destination = destination
            self.excludeAirlines = excludeAirlines
            self.excludeAirports = excludeAirports
            self.includeAirlines = includeAirlines
            self.includeAirports = includeAirports
            self.localDateTime = localDateTime
            self.maxConnections = maxConnections
            self.maxResults = maxResults
            self.minimumConnectTimeMinutes = minimumConnectTimeMinutes
            self.numHours = numHours
            self.origin = origin
            self.prefer = prefer
            self.searchBy = searchBy
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.allowNearbyArrivals = try container.decodeIfPresent(Bool.self, forKey: .allowNearbyArrivals)
            self.allowNearbyDepartures = try container.decodeIfPresent(Bool.self, forKey: .allowNearbyDepartures)
            self.destination = try container.decode(String.self, forKey: .destination)
            self.excludeAirlines = try container.decodeIfPresent([String].self, forKey: .excludeAirlines)
            self.excludeAirports = try container.decodeIfPresent([String].self, forKey: .excludeAirports)
            self.includeAirlines = try container.decodeIfPresent([String].self, forKey: .includeAirlines)
            self.includeAirports = try container.decodeIfPresent([String].self, forKey: .includeAirports)
            self.localDateTime = try container.decode(Date.self, forKey: .localDateTime)
            self.maxConnections = try container.decodeIfPresent(Int.self, forKey: .maxConnections)
            self.maxResults = try container.decodeIfPresent(Int.self, forKey: .maxResults)
            self.minimumConnectTimeMinutes = try container.decodeIfPresent(Int.self, forKey: .minimumConnectTimeMinutes)
            self.numHours = try container.decodeIfPresent(Int.self, forKey: .numHours)
            self.origin = try container.decode(String.self, forKey: .origin)
            self.prefer = try container.decodeIfPresent(ConnectionSearchPreferenceEnum.self, forKey: .prefer)
            self.searchBy = try container.decode(ConnectionSearchByEnum.self, forKey: .searchBy)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.allowNearbyArrivals, forKey: .allowNearbyArrivals)
            try container.encodeIfPresent(self.allowNearbyDepartures, forKey: .allowNearbyDepartures)
            try container.encode(self.destination, forKey: .destination)
            try container.encodeIfPresent(self.excludeAirlines, forKey: .excludeAirlines)
            try container.encodeIfPresent(self.excludeAirports, forKey: .excludeAirports)
            try container.encodeIfPresent(self.includeAirlines, forKey: .includeAirlines)
            try container.encodeIfPresent(self.includeAirports, forKey: .includeAirports)
            try container.encode(self.localDateTime, forKey: .localDateTime)
            try container.encodeIfPresent(self.maxConnections, forKey: .maxConnections)
            try container.encodeIfPresent(self.maxResults, forKey: .maxResults)
            try container.encodeIfPresent(self.minimumConnectTimeMinutes, forKey: .minimumConnectTimeMinutes)
            try container.encodeIfPresent(self.numHours, forKey: .numHours)
            try container.encode(self.origin, forKey: .origin)
            try container.encodeIfPresent(self.prefer, forKey: .prefer)
            try container.encode(self.searchBy, forKey: .searchBy)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case allowNearbyArrivals = "allow_nearby_arrivals"
            case allowNearbyDepartures = "allow_nearby_departures"
            case destination
            case excludeAirlines = "exclude_airlines"
            case excludeAirports = "exclude_airports"
            case includeAirlines = "include_airlines"
            case includeAirports = "include_airports"
            case localDateTime = "local_date_time"
            case maxConnections = "max_connections"
            case maxResults = "max_results"
            case minimumConnectTimeMinutes = "minimum_connect_time_minutes"
            case numHours = "num_hours"
            case origin
            case prefer
            case searchBy = "search_by"
        }
    }
}