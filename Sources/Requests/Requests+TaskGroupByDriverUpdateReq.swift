import Foundation

extension Requests {
    public struct TaskGroupByDriverUpdateReq: Codable, Hashable, Sendable {
        public let taskGroupId: String
        public let timestamp: Date
        public let location: LocationFeature
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskGroupId: String,
            timestamp: Date,
            location: LocationFeature,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskGroupId = taskGroupId
            self.timestamp = timestamp
            self.location = location
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.timestamp = try container.decode(Date.self, forKey: .timestamp)
            self.location = try container.decode(LocationFeature.self, forKey: .location)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
            try container.encode(self.timestamp, forKey: .timestamp)
            try container.encode(self.location, forKey: .location)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskGroupId = "task_group_id"
            case timestamp
            case location
        }
    }
}