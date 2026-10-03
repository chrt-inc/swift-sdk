import Foundation

public struct CargoAiAirWaybillMessage1: Codable, Hashable, Sendable {
    public let id: String
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String
    public let cargoOnFlightAirWaybillId: String
    public let cargoOnFlightBookingId: String
    public let cargoOnFlightHouseAirWaybillIds: [String]?
    public let cargoOnFlightIntegration: Cargoai
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let fwbSent: Bool
    public let pendingUntilTimestamp: Date?
    public let request: CargoAiFwbAndFhlRequest1
    public let responseErrorMessage: String?
    public let responseStatusCode: Int?
    public let schemaVersion: Int
    public let sendStatus: CargoAiAirWaybillMessageSendStatusEnum1
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumber: String,
        cargoOnFlightAirWaybillId: String,
        cargoOnFlightBookingId: String,
        cargoOnFlightHouseAirWaybillIds: [String]? = nil,
        cargoOnFlightIntegration: Cargoai,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        fwbSent: Bool,
        pendingUntilTimestamp: Date? = nil,
        request: CargoAiFwbAndFhlRequest1,
        responseErrorMessage: String? = nil,
        responseStatusCode: Int? = nil,
        schemaVersion: Int,
        sendStatus: CargoAiAirWaybillMessageSendStatusEnum1,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumber = awbNumber
        self.cargoOnFlightAirWaybillId = cargoOnFlightAirWaybillId
        self.cargoOnFlightBookingId = cargoOnFlightBookingId
        self.cargoOnFlightHouseAirWaybillIds = cargoOnFlightHouseAirWaybillIds
        self.cargoOnFlightIntegration = cargoOnFlightIntegration
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.fwbSent = fwbSent
        self.pendingUntilTimestamp = pendingUntilTimestamp
        self.request = request
        self.responseErrorMessage = responseErrorMessage
        self.responseStatusCode = responseStatusCode
        self.schemaVersion = schemaVersion
        self.sendStatus = sendStatus
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.cargoOnFlightAirWaybillId = try container.decode(String.self, forKey: .cargoOnFlightAirWaybillId)
        self.cargoOnFlightBookingId = try container.decode(String.self, forKey: .cargoOnFlightBookingId)
        self.cargoOnFlightHouseAirWaybillIds = try container.decodeIfPresent([String].self, forKey: .cargoOnFlightHouseAirWaybillIds)
        self.cargoOnFlightIntegration = try container.decode(Cargoai.self, forKey: .cargoOnFlightIntegration)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.fwbSent = try container.decode(Bool.self, forKey: .fwbSent)
        self.pendingUntilTimestamp = try container.decodeIfPresent(Date.self, forKey: .pendingUntilTimestamp)
        self.request = try container.decode(CargoAiFwbAndFhlRequest1.self, forKey: .request)
        self.responseErrorMessage = try container.decodeIfPresent(String.self, forKey: .responseErrorMessage)
        self.responseStatusCode = try container.decodeIfPresent(Int.self, forKey: .responseStatusCode)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sendStatus = try container.decode(CargoAiAirWaybillMessageSendStatusEnum1.self, forKey: .sendStatus)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.cargoOnFlightAirWaybillId, forKey: .cargoOnFlightAirWaybillId)
        try container.encode(self.cargoOnFlightBookingId, forKey: .cargoOnFlightBookingId)
        try container.encodeIfPresent(self.cargoOnFlightHouseAirWaybillIds, forKey: .cargoOnFlightHouseAirWaybillIds)
        try container.encode(self.cargoOnFlightIntegration, forKey: .cargoOnFlightIntegration)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.fwbSent, forKey: .fwbSent)
        try container.encodeIfPresent(self.pendingUntilTimestamp, forKey: .pendingUntilTimestamp)
        try container.encode(self.request, forKey: .request)
        try container.encodeIfPresent(self.responseErrorMessage, forKey: .responseErrorMessage)
        try container.encodeIfPresent(self.responseStatusCode, forKey: .responseStatusCode)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.sendStatus, forKey: .sendStatus)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    public enum Cargoai: String, Codable, Hashable, CaseIterable, Sendable {
        case cargoai
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumber = "awb_number"
        case cargoOnFlightAirWaybillId = "cargo_on_flight_air_waybill_id"
        case cargoOnFlightBookingId = "cargo_on_flight_booking_id"
        case cargoOnFlightHouseAirWaybillIds = "cargo_on_flight_house_air_waybill_ids"
        case cargoOnFlightIntegration = "cargo_on_flight_integration"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case fwbSent = "fwb_sent"
        case pendingUntilTimestamp = "pending_until_timestamp"
        case request
        case responseErrorMessage = "response_error_message"
        case responseStatusCode = "response_status_code"
        case schemaVersion = "schema_version"
        case sendStatus = "send_status"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}