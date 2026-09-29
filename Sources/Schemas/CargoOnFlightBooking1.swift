import Foundation

public struct CargoOnFlightBooking1: Codable, Hashable, Sendable {
    public let id: String
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String?
    public let bookedItinerary: CargoOnFlightBookingItinerary1?
    public let bookedRate: CargoOnFlightBookingRate1?
    public let cancellationRequestedAtTimestamp: Date?
    public let cancelledAtTimestamp: Date?
    public let cargoDimensions: [CargoOnFlightBookingCargoDimension1]?
    public let cargoIds: [String]?
    public let cargoOnFlightBookingSearchId: String?
    public let cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1
    public let confirmedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let draftStartedAtTimestamp: Date
    public let failedAtTimestamp: Date?
    public let flightLegIds: [String]?
    public let iataCassOfficeId: String?
    public let integrationStatus: String?
    public let orderId: String
    public let orderShortId: String
    public let rejectedAtTimestamp: Date?
    public let requestedAtTimestamp: Date?
    public let schemaVersion: Int
    public let status: CargoOnFlightBookingStatusEnum1
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumber: String? = nil,
        bookedItinerary: CargoOnFlightBookingItinerary1? = nil,
        bookedRate: CargoOnFlightBookingRate1? = nil,
        cancellationRequestedAtTimestamp: Date? = nil,
        cancelledAtTimestamp: Date? = nil,
        cargoDimensions: [CargoOnFlightBookingCargoDimension1]? = nil,
        cargoIds: [String]? = nil,
        cargoOnFlightBookingSearchId: String? = nil,
        cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1,
        confirmedAtTimestamp: Date? = nil,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        draftStartedAtTimestamp: Date,
        failedAtTimestamp: Date? = nil,
        flightLegIds: [String]? = nil,
        iataCassOfficeId: String? = nil,
        integrationStatus: String? = nil,
        orderId: String,
        orderShortId: String,
        rejectedAtTimestamp: Date? = nil,
        requestedAtTimestamp: Date? = nil,
        schemaVersion: Int,
        status: CargoOnFlightBookingStatusEnum1,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumber = awbNumber
        self.bookedItinerary = bookedItinerary
        self.bookedRate = bookedRate
        self.cancellationRequestedAtTimestamp = cancellationRequestedAtTimestamp
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.cargoDimensions = cargoDimensions
        self.cargoIds = cargoIds
        self.cargoOnFlightBookingSearchId = cargoOnFlightBookingSearchId
        self.cargoOnFlightIntegration = cargoOnFlightIntegration
        self.confirmedAtTimestamp = confirmedAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.failedAtTimestamp = failedAtTimestamp
        self.flightLegIds = flightLegIds
        self.iataCassOfficeId = iataCassOfficeId
        self.integrationStatus = integrationStatus
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.rejectedAtTimestamp = rejectedAtTimestamp
        self.requestedAtTimestamp = requestedAtTimestamp
        self.schemaVersion = schemaVersion
        self.status = status
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
        self.bookedItinerary = try container.decodeIfPresent(CargoOnFlightBookingItinerary1.self, forKey: .bookedItinerary)
        self.bookedRate = try container.decodeIfPresent(CargoOnFlightBookingRate1.self, forKey: .bookedRate)
        self.cancellationRequestedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancellationRequestedAtTimestamp)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.cargoDimensions = try container.decodeIfPresent([CargoOnFlightBookingCargoDimension1].self, forKey: .cargoDimensions)
        self.cargoIds = try container.decodeIfPresent([String].self, forKey: .cargoIds)
        self.cargoOnFlightBookingSearchId = try container.decodeIfPresent(String.self, forKey: .cargoOnFlightBookingSearchId)
        self.cargoOnFlightIntegration = try container.decode(CargoOnFlightIntegrationEnum1.self, forKey: .cargoOnFlightIntegration)
        self.confirmedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .confirmedAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.failedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .failedAtTimestamp)
        self.flightLegIds = try container.decodeIfPresent([String].self, forKey: .flightLegIds)
        self.iataCassOfficeId = try container.decodeIfPresent(String.self, forKey: .iataCassOfficeId)
        self.integrationStatus = try container.decodeIfPresent(String.self, forKey: .integrationStatus)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.rejectedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .rejectedAtTimestamp)
        self.requestedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .requestedAtTimestamp)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.status = try container.decode(CargoOnFlightBookingStatusEnum1.self, forKey: .status)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
        try container.encodeIfPresent(self.bookedItinerary, forKey: .bookedItinerary)
        try container.encodeIfPresent(self.bookedRate, forKey: .bookedRate)
        try container.encodeIfPresent(self.cancellationRequestedAtTimestamp, forKey: .cancellationRequestedAtTimestamp)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.cargoDimensions, forKey: .cargoDimensions)
        try container.encodeIfPresent(self.cargoIds, forKey: .cargoIds)
        try container.encodeIfPresent(self.cargoOnFlightBookingSearchId, forKey: .cargoOnFlightBookingSearchId)
        try container.encode(self.cargoOnFlightIntegration, forKey: .cargoOnFlightIntegration)
        try container.encodeIfPresent(self.confirmedAtTimestamp, forKey: .confirmedAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.failedAtTimestamp, forKey: .failedAtTimestamp)
        try container.encodeIfPresent(self.flightLegIds, forKey: .flightLegIds)
        try container.encodeIfPresent(self.iataCassOfficeId, forKey: .iataCassOfficeId)
        try container.encodeIfPresent(self.integrationStatus, forKey: .integrationStatus)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.rejectedAtTimestamp, forKey: .rejectedAtTimestamp)
        try container.encodeIfPresent(self.requestedAtTimestamp, forKey: .requestedAtTimestamp)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumber = "awb_number"
        case bookedItinerary = "booked_itinerary"
        case bookedRate = "booked_rate"
        case cancellationRequestedAtTimestamp = "cancellation_requested_at_timestamp"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case cargoDimensions = "cargo_dimensions"
        case cargoIds = "cargo_ids"
        case cargoOnFlightBookingSearchId = "cargo_on_flight_booking_search_id"
        case cargoOnFlightIntegration = "cargo_on_flight_integration"
        case confirmedAtTimestamp = "confirmed_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case failedAtTimestamp = "failed_at_timestamp"
        case flightLegIds = "flight_leg_ids"
        case iataCassOfficeId = "iata_cass_office_id"
        case integrationStatus = "integration_status"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case rejectedAtTimestamp = "rejected_at_timestamp"
        case requestedAtTimestamp = "requested_at_timestamp"
        case schemaVersion = "schema_version"
        case status
        case taskGroupId = "task_group_id"
    }
}