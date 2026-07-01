import Foundation

public struct FlightLeg1: Codable, Hashable, Sendable {
    public let id: String
    public let actualArrivalUtc: Date?
    public let actualDepartureUtc: Date?
    public let arrivalGate: String?
    public let arrivalTerminal: String?
    public let carrierIata: String
    public let carrierIcao: String?
    public let ciriumFlightId: Int?
    public let departureGate: String?
    public let departureTerminal: String?
    public let destinationIata: String
    public let estimatedArrivalUtc: Date?
    public let estimatedDepartureUtc: Date?
    public let flightNumber: String
    public let flightStatus: FlightLegStatusEnum1?
    public let flightStatusFetchedAtUtc: Date?
    public let flightStatusSource: FlightLegStatusSourceEnum1?
    public let orderId: String?
    public let originIata: String
    public let provenance: FlightLegProvenanceEnum1
    public let scheduledArrivalUtc: Date?
    public let scheduledDepartureUtc: Date
    public let schemaVersion: Int
    public let sessionId: String?
    public let taskGroupId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        actualArrivalUtc: Date? = nil,
        actualDepartureUtc: Date? = nil,
        arrivalGate: String? = nil,
        arrivalTerminal: String? = nil,
        carrierIata: String,
        carrierIcao: String? = nil,
        ciriumFlightId: Int? = nil,
        departureGate: String? = nil,
        departureTerminal: String? = nil,
        destinationIata: String,
        estimatedArrivalUtc: Date? = nil,
        estimatedDepartureUtc: Date? = nil,
        flightNumber: String,
        flightStatus: FlightLegStatusEnum1? = nil,
        flightStatusFetchedAtUtc: Date? = nil,
        flightStatusSource: FlightLegStatusSourceEnum1? = nil,
        orderId: String? = nil,
        originIata: String,
        provenance: FlightLegProvenanceEnum1,
        scheduledArrivalUtc: Date? = nil,
        scheduledDepartureUtc: Date,
        schemaVersion: Int,
        sessionId: String? = nil,
        taskGroupId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.actualArrivalUtc = actualArrivalUtc
        self.actualDepartureUtc = actualDepartureUtc
        self.arrivalGate = arrivalGate
        self.arrivalTerminal = arrivalTerminal
        self.carrierIata = carrierIata
        self.carrierIcao = carrierIcao
        self.ciriumFlightId = ciriumFlightId
        self.departureGate = departureGate
        self.departureTerminal = departureTerminal
        self.destinationIata = destinationIata
        self.estimatedArrivalUtc = estimatedArrivalUtc
        self.estimatedDepartureUtc = estimatedDepartureUtc
        self.flightNumber = flightNumber
        self.flightStatus = flightStatus
        self.flightStatusFetchedAtUtc = flightStatusFetchedAtUtc
        self.flightStatusSource = flightStatusSource
        self.orderId = orderId
        self.originIata = originIata
        self.provenance = provenance
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.schemaVersion = schemaVersion
        self.sessionId = sessionId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.actualArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .actualArrivalUtc)
        self.actualDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .actualDepartureUtc)
        self.arrivalGate = try container.decodeIfPresent(String.self, forKey: .arrivalGate)
        self.arrivalTerminal = try container.decodeIfPresent(String.self, forKey: .arrivalTerminal)
        self.carrierIata = try container.decode(String.self, forKey: .carrierIata)
        self.carrierIcao = try container.decodeIfPresent(String.self, forKey: .carrierIcao)
        self.ciriumFlightId = try container.decodeIfPresent(Int.self, forKey: .ciriumFlightId)
        self.departureGate = try container.decodeIfPresent(String.self, forKey: .departureGate)
        self.departureTerminal = try container.decodeIfPresent(String.self, forKey: .departureTerminal)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.estimatedArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .estimatedArrivalUtc)
        self.estimatedDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .estimatedDepartureUtc)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.flightStatus = try container.decodeIfPresent(FlightLegStatusEnum1.self, forKey: .flightStatus)
        self.flightStatusFetchedAtUtc = try container.decodeIfPresent(Date.self, forKey: .flightStatusFetchedAtUtc)
        self.flightStatusSource = try container.decodeIfPresent(FlightLegStatusSourceEnum1.self, forKey: .flightStatusSource)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.provenance = try container.decode(FlightLegProvenanceEnum1.self, forKey: .provenance)
        self.scheduledArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledArrivalUtc)
        self.scheduledDepartureUtc = try container.decode(Date.self, forKey: .scheduledDepartureUtc)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sessionId = try container.decodeIfPresent(String.self, forKey: .sessionId)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.actualArrivalUtc, forKey: .actualArrivalUtc)
        try container.encodeIfPresent(self.actualDepartureUtc, forKey: .actualDepartureUtc)
        try container.encodeIfPresent(self.arrivalGate, forKey: .arrivalGate)
        try container.encodeIfPresent(self.arrivalTerminal, forKey: .arrivalTerminal)
        try container.encode(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.carrierIcao, forKey: .carrierIcao)
        try container.encodeIfPresent(self.ciriumFlightId, forKey: .ciriumFlightId)
        try container.encodeIfPresent(self.departureGate, forKey: .departureGate)
        try container.encodeIfPresent(self.departureTerminal, forKey: .departureTerminal)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.estimatedArrivalUtc, forKey: .estimatedArrivalUtc)
        try container.encodeIfPresent(self.estimatedDepartureUtc, forKey: .estimatedDepartureUtc)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.flightStatus, forKey: .flightStatus)
        try container.encodeIfPresent(self.flightStatusFetchedAtUtc, forKey: .flightStatusFetchedAtUtc)
        try container.encodeIfPresent(self.flightStatusSource, forKey: .flightStatusSource)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encodeIfPresent(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
        try container.encode(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.sessionId, forKey: .sessionId)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case actualArrivalUtc = "actual_arrival_utc"
        case actualDepartureUtc = "actual_departure_utc"
        case arrivalGate = "arrival_gate"
        case arrivalTerminal = "arrival_terminal"
        case carrierIata = "carrier_iata"
        case carrierIcao = "carrier_icao"
        case ciriumFlightId = "cirium_flight_id"
        case departureGate = "departure_gate"
        case departureTerminal = "departure_terminal"
        case destinationIata = "destination_iata"
        case estimatedArrivalUtc = "estimated_arrival_utc"
        case estimatedDepartureUtc = "estimated_departure_utc"
        case flightNumber = "flight_number"
        case flightStatus = "flight_status"
        case flightStatusFetchedAtUtc = "flight_status_fetched_at_utc"
        case flightStatusSource = "flight_status_source"
        case orderId = "order_id"
        case originIata = "origin_iata"
        case provenance
        case scheduledArrivalUtc = "scheduled_arrival_utc"
        case scheduledDepartureUtc = "scheduled_departure_utc"
        case schemaVersion = "schema_version"
        case sessionId = "session_id"
        case taskGroupId = "task_group_id"
    }
}