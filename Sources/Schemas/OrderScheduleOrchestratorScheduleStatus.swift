import Foundation

public struct OrderScheduleOrchestratorScheduleStatus: Codable, Hashable, Sendable {
    public let exists: Bool
    public let paused: Bool?
    public let actionsCount: Int?
    public let nextActionTimes: [Date]?
    public let recentActions: [OrderScheduleOrchestratorScheduleActionResult]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        exists: Bool,
        paused: Bool? = nil,
        actionsCount: Int? = nil,
        nextActionTimes: [Date]? = nil,
        recentActions: [OrderScheduleOrchestratorScheduleActionResult]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.exists = exists
        self.paused = paused
        self.actionsCount = actionsCount
        self.nextActionTimes = nextActionTimes
        self.recentActions = recentActions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.exists = try container.decode(Bool.self, forKey: .exists)
        self.paused = try container.decodeIfPresent(Bool.self, forKey: .paused)
        self.actionsCount = try container.decodeIfPresent(Int.self, forKey: .actionsCount)
        self.nextActionTimes = try container.decodeIfPresent([Date].self, forKey: .nextActionTimes)
        self.recentActions = try container.decodeIfPresent([OrderScheduleOrchestratorScheduleActionResult].self, forKey: .recentActions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.exists, forKey: .exists)
        try container.encodeIfPresent(self.paused, forKey: .paused)
        try container.encodeIfPresent(self.actionsCount, forKey: .actionsCount)
        try container.encodeIfPresent(self.nextActionTimes, forKey: .nextActionTimes)
        try container.encodeIfPresent(self.recentActions, forKey: .recentActions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case exists
        case paused
        case actionsCount = "actions_count"
        case nextActionTimes = "next_action_times"
        case recentActions = "recent_actions"
    }
}