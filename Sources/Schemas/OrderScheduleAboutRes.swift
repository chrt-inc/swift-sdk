import Foundation

public struct OrderScheduleAboutRes: Codable, Hashable, Sendable {
    public let orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus
    public let ordersCreatedCount: Int
    public let shortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus,
        ordersCreatedCount: Int,
        shortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orchestratorScheduleStatus = orchestratorScheduleStatus
        self.ordersCreatedCount = ordersCreatedCount
        self.shortId = shortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orchestratorScheduleStatus = try container.decode(OrderScheduleOrchestratorScheduleStatus.self, forKey: .orchestratorScheduleStatus)
        self.ordersCreatedCount = try container.decode(Int.self, forKey: .ordersCreatedCount)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orchestratorScheduleStatus, forKey: .orchestratorScheduleStatus)
        try container.encode(self.ordersCreatedCount, forKey: .ordersCreatedCount)
        try container.encode(self.shortId, forKey: .shortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orchestratorScheduleStatus = "orchestrator_schedule_status"
        case ordersCreatedCount = "orders_created_count"
        case shortId = "short_id"
    }
}