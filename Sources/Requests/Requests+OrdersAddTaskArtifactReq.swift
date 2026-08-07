import Foundation

extension Requests {
    public struct OrdersAddTaskArtifactReq: Codable, Hashable, Sendable {
        /// Initial status for a non-draft task artifact. Defaults to STAGED. Omit for draft orders.
        public let status: Status?
        public let taskArtifact: TaskArtifactClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            status: Status? = nil,
            taskArtifact: TaskArtifactClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.status = status
            self.taskArtifact = taskArtifact
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.status = try container.decodeIfPresent(Status.self, forKey: .status)
            self.taskArtifact = try container.decode(TaskArtifactClientCreate1.self, forKey: .taskArtifact)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encode(self.taskArtifact, forKey: .taskArtifact)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case status
            case taskArtifact = "task_artifact"
        }
    }
}