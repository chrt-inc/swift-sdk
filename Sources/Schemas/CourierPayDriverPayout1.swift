import Foundation

public struct CourierPayDriverPayout1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let courierPayDriverLineItemGroupIds: [String]
    public let id: String
    public let driverId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let taskGroupIds: [String]
    public let payoutAmount: Double
    public let payoutStatus: PayoutStatusEnum?
    public let payoutCompletedAt: Date?
    /// Must be a string starting with `user_`
    public let payoutCompletedByUserId: String?
    public let payoutCreatedAt: Date
    /// Must be a string starting with `user_`
    public let payoutCreatedByUserId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        courierPayDriverLineItemGroupIds: [String],
        id: String,
        driverId: String,
        courierOrgId: String,
        taskGroupIds: [String],
        payoutAmount: Double,
        payoutStatus: PayoutStatusEnum? = nil,
        payoutCompletedAt: Date? = nil,
        payoutCompletedByUserId: String? = nil,
        payoutCreatedAt: Date,
        payoutCreatedByUserId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.courierPayDriverLineItemGroupIds = courierPayDriverLineItemGroupIds
        self.id = id
        self.driverId = driverId
        self.courierOrgId = courierOrgId
        self.taskGroupIds = taskGroupIds
        self.payoutAmount = payoutAmount
        self.payoutStatus = payoutStatus
        self.payoutCompletedAt = payoutCompletedAt
        self.payoutCompletedByUserId = payoutCompletedByUserId
        self.payoutCreatedAt = payoutCreatedAt
        self.payoutCreatedByUserId = payoutCreatedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.courierPayDriverLineItemGroupIds = try container.decode([String].self, forKey: .courierPayDriverLineItemGroupIds)
        self.id = try container.decode(String.self, forKey: .id)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.taskGroupIds = try container.decode([String].self, forKey: .taskGroupIds)
        self.payoutAmount = try container.decode(Double.self, forKey: .payoutAmount)
        self.payoutStatus = try container.decodeIfPresent(PayoutStatusEnum.self, forKey: .payoutStatus)
        self.payoutCompletedAt = try container.decodeIfPresent(Date.self, forKey: .payoutCompletedAt)
        self.payoutCompletedByUserId = try container.decodeIfPresent(String.self, forKey: .payoutCompletedByUserId)
        self.payoutCreatedAt = try container.decode(Date.self, forKey: .payoutCreatedAt)
        self.payoutCreatedByUserId = try container.decode(String.self, forKey: .payoutCreatedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.courierPayDriverLineItemGroupIds, forKey: .courierPayDriverLineItemGroupIds)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encode(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encode(self.payoutAmount, forKey: .payoutAmount)
        try container.encodeIfPresent(self.payoutStatus, forKey: .payoutStatus)
        try container.encodeIfPresent(self.payoutCompletedAt, forKey: .payoutCompletedAt)
        try container.encodeIfPresent(self.payoutCompletedByUserId, forKey: .payoutCompletedByUserId)
        try container.encode(self.payoutCreatedAt, forKey: .payoutCreatedAt)
        try container.encode(self.payoutCreatedByUserId, forKey: .payoutCreatedByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case courierPayDriverLineItemGroupIds = "courier_pay_driver_line_item_group_ids"
        case id = "_id"
        case driverId = "driver_id"
        case courierOrgId = "courier_org_id"
        case taskGroupIds = "task_group_ids"
        case payoutAmount = "payout_amount"
        case payoutStatus = "payout_status"
        case payoutCompletedAt = "payout_completed_at"
        case payoutCompletedByUserId = "payout_completed_by_user_id"
        case payoutCreatedAt = "payout_created_at"
        case payoutCreatedByUserId = "payout_created_by_user_id"
    }
}