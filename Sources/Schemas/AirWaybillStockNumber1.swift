import Foundation

public struct AirWaybillStockNumber1: Codable, Hashable, Sendable {
    public let id: String
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String
    public let cargoOnFlightBookingId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    public let status: AirWaybillStockNumberStatusEnum1
    public let statusChangedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let statusChangedByUserId: String?
    public let statusNote: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        awbNumber: String,
        cargoOnFlightBookingId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        ownedByOrgId: String,
        schemaVersion: Int,
        status: AirWaybillStockNumberStatusEnum1,
        statusChangedAtTimestamp: Date,
        statusChangedByUserId: String? = nil,
        statusNote: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.awbNumber = awbNumber
        self.cargoOnFlightBookingId = cargoOnFlightBookingId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.status = status
        self.statusChangedAtTimestamp = statusChangedAtTimestamp
        self.statusChangedByUserId = statusChangedByUserId
        self.statusNote = statusNote
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.cargoOnFlightBookingId = try container.decodeIfPresent(String.self, forKey: .cargoOnFlightBookingId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.status = try container.decode(AirWaybillStockNumberStatusEnum1.self, forKey: .status)
        self.statusChangedAtTimestamp = try container.decode(Date.self, forKey: .statusChangedAtTimestamp)
        self.statusChangedByUserId = try container.decodeIfPresent(String.self, forKey: .statusChangedByUserId)
        self.statusNote = try container.decodeIfPresent(String.self, forKey: .statusNote)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encodeIfPresent(self.cargoOnFlightBookingId, forKey: .cargoOnFlightBookingId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.statusChangedAtTimestamp, forKey: .statusChangedAtTimestamp)
        try container.encodeIfPresent(self.statusChangedByUserId, forKey: .statusChangedByUserId)
        try container.encodeIfPresent(self.statusNote, forKey: .statusNote)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case awbNumber = "awb_number"
        case cargoOnFlightBookingId = "cargo_on_flight_booking_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
        case status
        case statusChangedAtTimestamp = "status_changed_at_timestamp"
        case statusChangedByUserId = "status_changed_by_user_id"
        case statusNote = "status_note"
    }
}