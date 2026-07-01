import Foundation

public struct ListingTaskForBidder1: Codable, Hashable, Sendable {
    public let action: Action?
    public let location: LocationFeature?
    public let taskId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: Action? = nil,
        location: LocationFeature? = nil,
        taskId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.location = location
        self.taskId = taskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.taskId = try container.decode(String.self, forKey: .taskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encode(self.taskId, forKey: .taskId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case location
        case taskId = "task_id"
    }
}