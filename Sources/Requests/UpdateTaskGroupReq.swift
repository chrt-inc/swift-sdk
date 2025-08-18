import Foundation

public struct UpdateTaskGroupReq: Codable, Hashable, Sendable {
    public let taskGroupId: String
    public let setDriverId: JSONValue?
    public let removeDriver: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupId: String,
        setDriverId: JSONValue? = nil,
        removeDriver: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupId = taskGroupId
        self.setDriverId = setDriverId
        self.removeDriver = removeDriver
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.setDriverId = try container.decodeIfPresent(JSONValue.self, forKey: .setDriverId)
        self.removeDriver = try container.decodeIfPresent(Bool.self, forKey: .removeDriver)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.setDriverId, forKey: .setDriverId)
        try container.encodeIfPresent(self.removeDriver, forKey: .removeDriver)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupId = "task_group_id"
        case setDriverId = "set_driver_id"
        case removeDriver = "remove_driver"
    }
}