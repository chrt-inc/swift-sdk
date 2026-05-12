import Foundation

public struct OrderScheduleOrchestratorScheduleActionResult: Codable, Hashable, Sendable {
    public let scheduledAt: Date
    public let startedAt: Date
    public let workflowId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheduledAt: Date,
        startedAt: Date,
        workflowId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheduledAt = scheduledAt
        self.startedAt = startedAt
        self.workflowId = workflowId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheduledAt = try container.decode(Date.self, forKey: .scheduledAt)
        self.startedAt = try container.decode(Date.self, forKey: .startedAt)
        self.workflowId = try container.decodeIfPresent(String.self, forKey: .workflowId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.scheduledAt, forKey: .scheduledAt)
        try container.encode(self.startedAt, forKey: .startedAt)
        try container.encodeIfPresent(self.workflowId, forKey: .workflowId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheduledAt = "scheduled_at"
        case startedAt = "started_at"
        case workflowId = "workflow_id"
    }
}