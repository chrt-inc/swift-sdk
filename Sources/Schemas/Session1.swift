import Foundation

public struct Session1: Codable, Hashable, Sendable {
    public let id: String
    public let comments: String?
    public let createdAtTimestamp: Date
    public let deviceId: String
    public let deviceMacAddress: String
    public let faAlertIdByFlightNumber: [String: Int]?
    public let faAlertIds: [Int]?
    public let faFlightIds: [String]?
    public let flightLoadedStatusByFaFlightId: [String: String?]?
    public let flightLoadedStatuses: [String]?
    public let flightNumbers: [String]?
    public let flightStatusByFaFlightId: [String: FlightStatusEnum]?
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let `public`: Bool?
    public let schemaVersion: Int
    public let sharedWithOrgIds: [String]?
    public let terminated: Bool?
    public let terminatedAtTimestamp: Date?
    public let terminationScheduledForTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        comments: String? = nil,
        createdAtTimestamp: Date,
        deviceId: String,
        deviceMacAddress: String,
        faAlertIdByFlightNumber: [String: Int]? = nil,
        faAlertIds: [Int]? = nil,
        faFlightIds: [String]? = nil,
        flightLoadedStatusByFaFlightId: [String: String?]? = nil,
        flightLoadedStatuses: [String]? = nil,
        flightNumbers: [String]? = nil,
        flightStatusByFaFlightId: [String: FlightStatusEnum]? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orgId: String,
        public: Bool? = nil,
        schemaVersion: Int,
        sharedWithOrgIds: [String]? = nil,
        terminated: Bool? = nil,
        terminatedAtTimestamp: Date? = nil,
        terminationScheduledForTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.comments = comments
        self.createdAtTimestamp = createdAtTimestamp
        self.deviceId = deviceId
        self.deviceMacAddress = deviceMacAddress
        self.faAlertIdByFlightNumber = faAlertIdByFlightNumber
        self.faAlertIds = faAlertIds
        self.faFlightIds = faFlightIds
        self.flightLoadedStatusByFaFlightId = flightLoadedStatusByFaFlightId
        self.flightLoadedStatuses = flightLoadedStatuses
        self.flightNumbers = flightNumbers
        self.flightStatusByFaFlightId = flightStatusByFaFlightId
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orgId = orgId
        self.public = `public`
        self.schemaVersion = schemaVersion
        self.sharedWithOrgIds = sharedWithOrgIds
        self.terminated = terminated
        self.terminatedAtTimestamp = terminatedAtTimestamp
        self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.faAlertIdByFlightNumber = try container.decodeIfPresent([String: Int].self, forKey: .faAlertIdByFlightNumber)
        self.faAlertIds = try container.decodeIfPresent([Int].self, forKey: .faAlertIds)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.flightLoadedStatusByFaFlightId = try container.decodeIfPresent([String: String?].self, forKey: .flightLoadedStatusByFaFlightId)
        self.flightLoadedStatuses = try container.decodeIfPresent([String].self, forKey: .flightLoadedStatuses)
        self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
        self.flightStatusByFaFlightId = try container.decodeIfPresent([String: FlightStatusEnum].self, forKey: .flightStatusByFaFlightId)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sharedWithOrgIds = try container.decodeIfPresent([String].self, forKey: .sharedWithOrgIds)
        self.terminated = try container.decodeIfPresent(Bool.self, forKey: .terminated)
        self.terminatedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminatedAtTimestamp)
        self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encodeIfPresent(self.faAlertIdByFlightNumber, forKey: .faAlertIdByFlightNumber)
        try container.encodeIfPresent(self.faAlertIds, forKey: .faAlertIds)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        try container.encodeIfPresent(self.flightLoadedStatusByFaFlightId, forKey: .flightLoadedStatusByFaFlightId)
        try container.encodeIfPresent(self.flightLoadedStatuses, forKey: .flightLoadedStatuses)
        try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
        try container.encodeIfPresent(self.flightStatusByFaFlightId, forKey: .flightStatusByFaFlightId)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.sharedWithOrgIds, forKey: .sharedWithOrgIds)
        try container.encodeIfPresent(self.terminated, forKey: .terminated)
        try container.encodeIfPresent(self.terminatedAtTimestamp, forKey: .terminatedAtTimestamp)
        try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case comments
        case createdAtTimestamp = "created_at_timestamp"
        case deviceId = "device_id"
        case deviceMacAddress = "device_mac_address"
        case faAlertIdByFlightNumber = "fa_alert_id_by_flight_number"
        case faAlertIds = "fa_alert_ids"
        case faFlightIds = "fa_flight_ids"
        case flightLoadedStatusByFaFlightId = "flight_loaded_status_by_fa_flight_id"
        case flightLoadedStatuses = "flight_loaded_statuses"
        case flightNumbers = "flight_numbers"
        case flightStatusByFaFlightId = "flight_status_by_fa_flight_id"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orgId = "org_id"
        case `public`
        case schemaVersion = "schema_version"
        case sharedWithOrgIds = "shared_with_org_ids"
        case terminated
        case terminatedAtTimestamp = "terminated_at_timestamp"
        case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
    }
}