import Foundation

public struct OrderScheduleAboutRes: Codable, Hashable, Sendable {
    public let shortId: String
    public let ordersCreatedCount: Int
    public let orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        shortId: String,
        ordersCreatedCount: Int,
        orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.shortId = shortId
        self.ordersCreatedCount = ordersCreatedCount
        self.orchestratorScheduleStatus = orchestratorScheduleStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.ordersCreatedCount = try container.decode(Int.self, forKey: .ordersCreatedCount)
        self.orchestratorScheduleStatus = try container.decode(OrderScheduleOrchestratorScheduleStatus.self, forKey: .orchestratorScheduleStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encode(self.ordersCreatedCount, forKey: .ordersCreatedCount)
        try container.encode(self.orchestratorScheduleStatus, forKey: .orchestratorScheduleStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case shortId = "short_id"
        case ordersCreatedCount = "orders_created_count"
        case orchestratorScheduleStatus = "orchestrator_schedule_status"
    }
}