import Foundation

public struct TaskGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let orderId: String
    public let orderShortId: String
    public let taskIds: [String]
    /// Must be a string starting with `org_`
    public let courierOrgId: Nullable<String>?
    public let orderCancelled: Bool?
    public let status: TaskGroupStatusEnum1?
    public let driverId: Nullable<String>?
    public let createdAt: Nullable<Date>?
    public let startedAt: Nullable<Date>?
    public let completedAt: Nullable<Date>?
    public let completed: Bool?
    public let paused: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        orderId: String,
        orderShortId: String,
        taskIds: [String],
        courierOrgId: Nullable<String>? = nil,
        orderCancelled: Bool? = nil,
        status: TaskGroupStatusEnum1? = nil,
        driverId: Nullable<String>? = nil,
        createdAt: Nullable<Date>? = nil,
        startedAt: Nullable<Date>? = nil,
        completedAt: Nullable<Date>? = nil,
        completed: Bool? = nil,
        paused: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.taskIds = taskIds
        self.courierOrgId = courierOrgId
        self.orderCancelled = orderCancelled
        self.status = status
        self.driverId = driverId
        self.createdAt = createdAt
        self.startedAt = startedAt
        self.completedAt = completedAt
        self.completed = completed
        self.paused = paused
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.taskIds = try container.decode([String].self, forKey: .taskIds)
        self.courierOrgId = try container.decodeNullableIfPresent(String.self, forKey: .courierOrgId)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.status = try container.decodeIfPresent(TaskGroupStatusEnum1.self, forKey: .status)
        self.driverId = try container.decodeNullableIfPresent(String.self, forKey: .driverId)
        self.createdAt = try container.decodeNullableIfPresent(Date.self, forKey: .createdAt)
        self.startedAt = try container.decodeNullableIfPresent(Date.self, forKey: .startedAt)
        self.completedAt = try container.decodeNullableIfPresent(Date.self, forKey: .completedAt)
        self.completed = try container.decodeIfPresent(Bool.self, forKey: .completed)
        self.paused = try container.decodeIfPresent(Bool.self, forKey: .paused)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.taskIds, forKey: .taskIds)
        try container.encodeNullableIfPresent(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeNullableIfPresent(self.driverId, forKey: .driverId)
        try container.encodeNullableIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeNullableIfPresent(self.startedAt, forKey: .startedAt)
        try container.encodeNullableIfPresent(self.completedAt, forKey: .completedAt)
        try container.encodeIfPresent(self.completed, forKey: .completed)
        try container.encodeIfPresent(self.paused, forKey: .paused)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case taskIds = "task_ids"
        case courierOrgId = "courier_org_id"
        case orderCancelled = "order_cancelled"
        case status
        case driverId = "driver_id"
        case createdAt = "created_at"
        case startedAt = "started_at"
        case completedAt = "completed_at"
        case completed
        case paused
    }
}