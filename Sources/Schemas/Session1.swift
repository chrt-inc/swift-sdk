import Foundation

public struct Session1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let offChrtReferenceId: String?
    public let comments: String?
    public let `public`: Bool?
    public let offChrtShipperOrgId: String?
    public let flightNumbers: [String]?
    public let faFlightIds: [String]?
    public let deviceId: String
    public let deviceMacAddress: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let sharedWithOrgIds: [String]?
    public let createdAtTimestamp: Date
    public let terminated: Bool?
    public let terminationScheduledForTimestamp: Date?
    public let terminatedAtTimestamp: Date?
    public let faAlertIds: [Int]?
    public let flightLoadedStatuses: [String]?
    public let faAlertIdByFlightNumber: [String: Int]?
    public let flightStatusByFaFlightId: [String: FlightStatusEnum]?
    public let flightLoadedStatusByFaFlightId: [String: String?]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        offChrtReferenceId: String? = nil,
        comments: String? = nil,
        public: Bool? = nil,
        offChrtShipperOrgId: String? = nil,
        flightNumbers: [String]? = nil,
        faFlightIds: [String]? = nil,
        deviceId: String,
        deviceMacAddress: String,
        orgId: String,
        sharedWithOrgIds: [String]? = nil,
        createdAtTimestamp: Date,
        terminated: Bool? = nil,
        terminationScheduledForTimestamp: Date? = nil,
        terminatedAtTimestamp: Date? = nil,
        faAlertIds: [Int]? = nil,
        flightLoadedStatuses: [String]? = nil,
        faAlertIdByFlightNumber: [String: Int]? = nil,
        flightStatusByFaFlightId: [String: FlightStatusEnum]? = nil,
        flightLoadedStatusByFaFlightId: [String: String?]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.offChrtReferenceId = offChrtReferenceId
        self.comments = comments
        self.public = `public`
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.flightNumbers = flightNumbers
        self.faFlightIds = faFlightIds
        self.deviceId = deviceId
        self.deviceMacAddress = deviceMacAddress
        self.orgId = orgId
        self.sharedWithOrgIds = sharedWithOrgIds
        self.createdAtTimestamp = createdAtTimestamp
        self.terminated = terminated
        self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
        self.terminatedAtTimestamp = terminatedAtTimestamp
        self.faAlertIds = faAlertIds
        self.flightLoadedStatuses = flightLoadedStatuses
        self.faAlertIdByFlightNumber = faAlertIdByFlightNumber
        self.flightStatusByFaFlightId = flightStatusByFaFlightId
        self.flightLoadedStatusByFaFlightId = flightLoadedStatusByFaFlightId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.sharedWithOrgIds = try container.decodeIfPresent([String].self, forKey: .sharedWithOrgIds)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.terminated = try container.decodeIfPresent(Bool.self, forKey: .terminated)
        self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
        self.terminatedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminatedAtTimestamp)
        self.faAlertIds = try container.decodeIfPresent([Int].self, forKey: .faAlertIds)
        self.flightLoadedStatuses = try container.decodeIfPresent([String].self, forKey: .flightLoadedStatuses)
        self.faAlertIdByFlightNumber = try container.decodeIfPresent([String: Int].self, forKey: .faAlertIdByFlightNumber)
        self.flightStatusByFaFlightId = try container.decodeIfPresent([String: FlightStatusEnum].self, forKey: .flightStatusByFaFlightId)
        self.flightLoadedStatusByFaFlightId = try container.decodeIfPresent([String: String?].self, forKey: .flightLoadedStatusByFaFlightId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.sharedWithOrgIds, forKey: .sharedWithOrgIds)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.terminated, forKey: .terminated)
        try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
        try container.encodeIfPresent(self.terminatedAtTimestamp, forKey: .terminatedAtTimestamp)
        try container.encodeIfPresent(self.faAlertIds, forKey: .faAlertIds)
        try container.encodeIfPresent(self.flightLoadedStatuses, forKey: .flightLoadedStatuses)
        try container.encodeIfPresent(self.faAlertIdByFlightNumber, forKey: .faAlertIdByFlightNumber)
        try container.encodeIfPresent(self.flightStatusByFaFlightId, forKey: .flightStatusByFaFlightId)
        try container.encodeIfPresent(self.flightLoadedStatusByFaFlightId, forKey: .flightLoadedStatusByFaFlightId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case offChrtReferenceId = "off_chrt_reference_id"
        case comments
        case `public`
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case flightNumbers = "flight_numbers"
        case faFlightIds = "fa_flight_ids"
        case deviceId = "device_id"
        case deviceMacAddress = "device_mac_address"
        case orgId = "org_id"
        case sharedWithOrgIds = "shared_with_org_ids"
        case createdAtTimestamp = "created_at_timestamp"
        case terminated
        case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
        case terminatedAtTimestamp = "terminated_at_timestamp"
        case faAlertIds = "fa_alert_ids"
        case flightLoadedStatuses = "flight_loaded_statuses"
        case faAlertIdByFlightNumber = "fa_alert_id_by_flight_number"
        case flightStatusByFaFlightId = "flight_status_by_fa_flight_id"
        case flightLoadedStatusByFaFlightId = "flight_loaded_status_by_fa_flight_id"
        case id = "_id"
    }
}