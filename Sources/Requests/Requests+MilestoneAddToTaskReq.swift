import Foundation

extension Requests {
    public struct MilestoneAddToTaskReq: Codable, Hashable, Sendable {
        public let taskId: String
        public let completerComments: String?
        public let type: MilestoneTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taskId: String,
            completerComments: String? = nil,
            type: MilestoneTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taskId = taskId
            self.completerComments = completerComments
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taskId = try container.decode(String.self, forKey: .taskId)
            self.completerComments = try container.decodeIfPresent(String.self, forKey: .completerComments)
            self.type = try container.decode(MilestoneTypeEnum1.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taskId, forKey: .taskId)
            try container.encodeIfPresent(self.completerComments, forKey: .completerComments)
            try container.encode(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taskId = "task_id"
            case completerComments = "completer_comments"
            case type
        }
    }
}