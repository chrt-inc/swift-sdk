import Foundation

public struct CourierPayDriverStatement1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let courierPayDriverLineItemGroupIds: [String]
    public let id: String
    public let driverId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let taskGroupIds: [String]
    public let statementAmount: Double
    public let statementStatus: StatementStatusEnum?
    public let statementCompletedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let statementCompletedByUserId: String?
    public let statementCreatedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let statementCreatedByUserId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        courierPayDriverLineItemGroupIds: [String],
        id: String,
        driverId: String,
        courierOrgId: String,
        taskGroupIds: [String],
        statementAmount: Double,
        statementStatus: StatementStatusEnum? = nil,
        statementCompletedAtTimestamp: Date? = nil,
        statementCompletedByUserId: String? = nil,
        statementCreatedAtTimestamp: Date,
        statementCreatedByUserId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.courierPayDriverLineItemGroupIds = courierPayDriverLineItemGroupIds
        self.id = id
        self.driverId = driverId
        self.courierOrgId = courierOrgId
        self.taskGroupIds = taskGroupIds
        self.statementAmount = statementAmount
        self.statementStatus = statementStatus
        self.statementCompletedAtTimestamp = statementCompletedAtTimestamp
        self.statementCompletedByUserId = statementCompletedByUserId
        self.statementCreatedAtTimestamp = statementCreatedAtTimestamp
        self.statementCreatedByUserId = statementCreatedByUserId
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
        self.statementAmount = try container.decode(Double.self, forKey: .statementAmount)
        self.statementStatus = try container.decodeIfPresent(StatementStatusEnum.self, forKey: .statementStatus)
        self.statementCompletedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .statementCompletedAtTimestamp)
        self.statementCompletedByUserId = try container.decodeIfPresent(String.self, forKey: .statementCompletedByUserId)
        self.statementCreatedAtTimestamp = try container.decode(Date.self, forKey: .statementCreatedAtTimestamp)
        self.statementCreatedByUserId = try container.decode(String.self, forKey: .statementCreatedByUserId)
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
        try container.encode(self.statementAmount, forKey: .statementAmount)
        try container.encodeIfPresent(self.statementStatus, forKey: .statementStatus)
        try container.encodeIfPresent(self.statementCompletedAtTimestamp, forKey: .statementCompletedAtTimestamp)
        try container.encodeIfPresent(self.statementCompletedByUserId, forKey: .statementCompletedByUserId)
        try container.encode(self.statementCreatedAtTimestamp, forKey: .statementCreatedAtTimestamp)
        try container.encode(self.statementCreatedByUserId, forKey: .statementCreatedByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case courierPayDriverLineItemGroupIds = "courier_pay_driver_line_item_group_ids"
        case id = "_id"
        case driverId = "driver_id"
        case courierOrgId = "courier_org_id"
        case taskGroupIds = "task_group_ids"
        case statementAmount = "statement_amount"
        case statementStatus = "statement_status"
        case statementCompletedAtTimestamp = "statement_completed_at_timestamp"
        case statementCompletedByUserId = "statement_completed_by_user_id"
        case statementCreatedAtTimestamp = "statement_created_at_timestamp"
        case statementCreatedByUserId = "statement_created_by_user_id"
    }
}