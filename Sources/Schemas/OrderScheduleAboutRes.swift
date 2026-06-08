import Foundation

public struct OrderScheduleAboutRes: Codable, Hashable, Sendable {
    public let ordersCreatedCount: Int
    public let orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ordersCreatedCount: Int,
        orchestratorScheduleStatus: OrderScheduleOrchestratorScheduleStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ordersCreatedCount = ordersCreatedCount
        self.orchestratorScheduleStatus = orchestratorScheduleStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ordersCreatedCount = try container.decode(Int.self, forKey: .ordersCreatedCount)
        self.orchestratorScheduleStatus = try container.decode(OrderScheduleOrchestratorScheduleStatus.self, forKey: .orchestratorScheduleStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ordersCreatedCount, forKey: .ordersCreatedCount)
        try container.encode(self.orchestratorScheduleStatus, forKey: .orchestratorScheduleStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ordersCreatedCount = "orders_created_count"
        case orchestratorScheduleStatus = "orchestrator_schedule_status"
    }
}