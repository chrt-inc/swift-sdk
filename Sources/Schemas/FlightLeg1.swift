import Foundation

public struct FlightLeg1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let orderId: String
    public let taskGroupId: String
    public let flightNumber: String
    public let provenance: FlightLegProvenanceEnum1
    public let originIata: String
    public let destinationIata: String
    public let scheduledDepartureUtc: Date
    public let carrierIata: String?
    public let carrierIcao: String?
    public let scheduledArrivalUtc: Date?
    public let ciriumFlightId: Int?
    public let flightStatus: FlightLegStatusEnum1?
    public let estimatedDepartureUtc: Date?
    public let actualDepartureUtc: Date?
    public let estimatedArrivalUtc: Date?
    public let actualArrivalUtc: Date?
    public let departureGate: String?
    public let arrivalGate: String?
    public let departureTerminal: String?
    public let arrivalTerminal: String?
    public let flightStatusSource: FlightLegStatusSourceEnum1?
    public let flightStatusFetchedAtUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        orderId: String,
        taskGroupId: String,
        flightNumber: String,
        provenance: FlightLegProvenanceEnum1,
        originIata: String,
        destinationIata: String,
        scheduledDepartureUtc: Date,
        carrierIata: String? = nil,
        carrierIcao: String? = nil,
        scheduledArrivalUtc: Date? = nil,
        ciriumFlightId: Int? = nil,
        flightStatus: FlightLegStatusEnum1? = nil,
        estimatedDepartureUtc: Date? = nil,
        actualDepartureUtc: Date? = nil,
        estimatedArrivalUtc: Date? = nil,
        actualArrivalUtc: Date? = nil,
        departureGate: String? = nil,
        arrivalGate: String? = nil,
        departureTerminal: String? = nil,
        arrivalTerminal: String? = nil,
        flightStatusSource: FlightLegStatusSourceEnum1? = nil,
        flightStatusFetchedAtUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.flightNumber = flightNumber
        self.provenance = provenance
        self.originIata = originIata
        self.destinationIata = destinationIata
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.carrierIata = carrierIata
        self.carrierIcao = carrierIcao
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.ciriumFlightId = ciriumFlightId
        self.flightStatus = flightStatus
        self.estimatedDepartureUtc = estimatedDepartureUtc
        self.actualDepartureUtc = actualDepartureUtc
        self.estimatedArrivalUtc = estimatedArrivalUtc
        self.actualArrivalUtc = actualArrivalUtc
        self.departureGate = departureGate
        self.arrivalGate = arrivalGate
        self.departureTerminal = departureTerminal
        self.arrivalTerminal = arrivalTerminal
        self.flightStatusSource = flightStatusSource
        self.flightStatusFetchedAtUtc = flightStatusFetchedAtUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.provenance = try container.decode(FlightLegProvenanceEnum1.self, forKey: .provenance)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.scheduledDepartureUtc = try container.decode(Date.self, forKey: .scheduledDepartureUtc)
        self.carrierIata = try container.decodeIfPresent(String.self, forKey: .carrierIata)
        self.carrierIcao = try container.decodeIfPresent(String.self, forKey: .carrierIcao)
        self.scheduledArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledArrivalUtc)
        self.ciriumFlightId = try container.decodeIfPresent(Int.self, forKey: .ciriumFlightId)
        self.flightStatus = try container.decodeIfPresent(FlightLegStatusEnum1.self, forKey: .flightStatus)
        self.estimatedDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .estimatedDepartureUtc)
        self.actualDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .actualDepartureUtc)
        self.estimatedArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .estimatedArrivalUtc)
        self.actualArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .actualArrivalUtc)
        self.departureGate = try container.decodeIfPresent(String.self, forKey: .departureGate)
        self.arrivalGate = try container.decodeIfPresent(String.self, forKey: .arrivalGate)
        self.departureTerminal = try container.decodeIfPresent(String.self, forKey: .departureTerminal)
        self.arrivalTerminal = try container.decodeIfPresent(String.self, forKey: .arrivalTerminal)
        self.flightStatusSource = try container.decodeIfPresent(FlightLegStatusSourceEnum1.self, forKey: .flightStatusSource)
        self.flightStatusFetchedAtUtc = try container.decodeIfPresent(Date.self, forKey: .flightStatusFetchedAtUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
        try container.encodeIfPresent(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.carrierIcao, forKey: .carrierIcao)
        try container.encodeIfPresent(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
        try container.encodeIfPresent(self.ciriumFlightId, forKey: .ciriumFlightId)
        try container.encodeIfPresent(self.flightStatus, forKey: .flightStatus)
        try container.encodeIfPresent(self.estimatedDepartureUtc, forKey: .estimatedDepartureUtc)
        try container.encodeIfPresent(self.actualDepartureUtc, forKey: .actualDepartureUtc)
        try container.encodeIfPresent(self.estimatedArrivalUtc, forKey: .estimatedArrivalUtc)
        try container.encodeIfPresent(self.actualArrivalUtc, forKey: .actualArrivalUtc)
        try container.encodeIfPresent(self.departureGate, forKey: .departureGate)
        try container.encodeIfPresent(self.arrivalGate, forKey: .arrivalGate)
        try container.encodeIfPresent(self.departureTerminal, forKey: .departureTerminal)
        try container.encodeIfPresent(self.arrivalTerminal, forKey: .arrivalTerminal)
        try container.encodeIfPresent(self.flightStatusSource, forKey: .flightStatusSource)
        try container.encodeIfPresent(self.flightStatusFetchedAtUtc, forKey: .flightStatusFetchedAtUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case flightNumber = "flight_number"
        case provenance
        case originIata = "origin_iata"
        case destinationIata = "destination_iata"
        case scheduledDepartureUtc = "scheduled_departure_utc"
        case carrierIata = "carrier_iata"
        case carrierIcao = "carrier_icao"
        case scheduledArrivalUtc = "scheduled_arrival_utc"
        case ciriumFlightId = "cirium_flight_id"
        case flightStatus = "flight_status"
        case estimatedDepartureUtc = "estimated_departure_utc"
        case actualDepartureUtc = "actual_departure_utc"
        case estimatedArrivalUtc = "estimated_arrival_utc"
        case actualArrivalUtc = "actual_arrival_utc"
        case departureGate = "departure_gate"
        case arrivalGate = "arrival_gate"
        case departureTerminal = "departure_terminal"
        case arrivalTerminal = "arrival_terminal"
        case flightStatusSource = "flight_status_source"
        case flightStatusFetchedAtUtc = "flight_status_fetched_at_utc"
    }
}