import Foundation

extension Requests {
    public struct TaskGroupByDriverSharingSettingsUpdateReq: Codable, Hashable, Sendable {
        public let driverId: String
        public let `public`: Bool
        public let taskGroupId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            driverId: String,
            public: Bool,
            taskGroupId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.driverId = driverId
            self.public = `public`
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.public = try container.decode(Bool.self, forKey: .public)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.driverId, forKey: .driverId)
            try container.encode(self.public, forKey: .public)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case driverId = "driver_id"
            case `public`
            case taskGroupId = "task_group_id"
        }
    }
}