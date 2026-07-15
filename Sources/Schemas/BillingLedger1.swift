import Foundation

public struct BillingLedger1: Codable, Hashable, Sendable {
    public let id: String
    public let comments: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let inactiveAtTimestamp: Date?
    public let name: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentDestinationDriverId: String?
    public let paymentDestinationOffChrtProviderOrgDataId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentOriginOffChrtShipperOrgDataId: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let schemaVersion: Int
    public let status: BillingLedgerStatusEnum?
    public let taskGroupType: TaskGroupTypeEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        comments: String? = nil,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String,
        inactiveAtTimestamp: Date? = nil,
        name: String? = nil,
        ownedByOrgId: String,
        paymentDestinationDriverId: String? = nil,
        paymentDestinationOffChrtProviderOrgDataId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgDataId: String? = nil,
        paymentOriginOrgId: String? = nil,
        schemaVersion: Int,
        status: BillingLedgerStatusEnum? = nil,
        taskGroupType: TaskGroupTypeEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.comments = comments
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.inactiveAtTimestamp = inactiveAtTimestamp
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.paymentDestinationOffChrtProviderOrgDataId = paymentDestinationOffChrtProviderOrgDataId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentOriginOffChrtShipperOrgDataId = paymentOriginOffChrtShipperOrgDataId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.schemaVersion = schemaVersion
        self.status = status
        self.taskGroupType = taskGroupType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.inactiveAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inactiveAtTimestamp)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.paymentDestinationOffChrtProviderOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgDataId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentOriginOffChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgDataId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.status = try container.decodeIfPresent(BillingLedgerStatusEnum.self, forKey: .status)
        self.taskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.inactiveAtTimestamp, forKey: .inactiveAtTimestamp)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgDataId, forKey: .paymentDestinationOffChrtProviderOrgDataId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgDataId, forKey: .paymentOriginOffChrtShipperOrgDataId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupType, forKey: .taskGroupType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case comments
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case inactiveAtTimestamp = "inactive_at_timestamp"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case paymentDestinationOffChrtProviderOrgDataId = "payment_destination_off_chrt_provider_org_data_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentOriginOffChrtShipperOrgDataId = "payment_origin_off_chrt_shipper_org_data_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case schemaVersion = "schema_version"
        case status
        case taskGroupType = "task_group_type"
    }
}