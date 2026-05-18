import Foundation

public struct BillingLedger1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let name: String?
    public let taskGroupType: TaskGroupTypeEnum1?
    public let comments: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    public let paymentDestinationDriverId: String?
    public let id: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let status: BillingLedgerStatusEnum?
    public let inactiveAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        name: String? = nil,
        taskGroupType: TaskGroupTypeEnum1? = nil,
        comments: String? = nil,
        paymentOriginOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationDriverId: String? = nil,
        id: String,
        createdByUserId: String,
        createdByOrgId: String,
        createdAtTimestamp: Date,
        ownedByOrgId: String,
        status: BillingLedgerStatusEnum? = nil,
        inactiveAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.name = name
        self.taskGroupType = taskGroupType
        self.comments = comments
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.id = id
        self.createdByUserId = createdByUserId
        self.createdByOrgId = createdByOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.ownedByOrgId = ownedByOrgId
        self.status = status
        self.inactiveAtTimestamp = inactiveAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.taskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.status = try container.decodeIfPresent(BillingLedgerStatusEnum.self, forKey: .status)
        self.inactiveAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inactiveAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.taskGroupType, forKey: .taskGroupType)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.inactiveAtTimestamp, forKey: .inactiveAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case name
        case taskGroupType = "task_group_type"
        case comments
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case id = "_id"
        case createdByUserId = "created_by_user_id"
        case createdByOrgId = "created_by_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case ownedByOrgId = "owned_by_org_id"
        case status
        case inactiveAtTimestamp = "inactive_at_timestamp"
    }
}