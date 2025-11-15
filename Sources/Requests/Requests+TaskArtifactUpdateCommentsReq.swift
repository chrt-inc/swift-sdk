import Foundation

extension Requests {
    public struct TaskArtifactUpdateCommentsReq: Codable, Hashable, Sendable {
        public let taskArtifactId: String
        public let completorComments: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskArtifactId: String,
            completorComments: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskArtifactId = taskArtifactId
            self.completorComments = completorComments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskArtifactId = try container.decode(String.self, forKey: .taskArtifactId)
            self.completorComments = try container.decode(String.self, forKey: .completorComments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskArtifactId, forKey: .taskArtifactId)
            try container.encode(self.completorComments, forKey: .completorComments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskArtifactId = "task_artifact_id"
            case completorComments = "completor_comments"
        }
    }
}