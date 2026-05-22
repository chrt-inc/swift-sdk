import Foundation

extension Requests {
    public struct AttemptTaskReq: Codable, Hashable, Sendable {
        /// Optional executor organization note for the task attempt.
        public let executorOrgNote: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            executorOrgNote: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.executorOrgNote = executorOrgNote
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.executorOrgNote = try container.decodeIfPresent(String.self, forKey: .executorOrgNote)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.executorOrgNote, forKey: .executorOrgNote)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case executorOrgNote = "executor_org_note"
        }
    }
}