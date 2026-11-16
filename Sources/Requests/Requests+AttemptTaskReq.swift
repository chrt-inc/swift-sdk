import Foundation

extension Requests {
    public struct AttemptTaskReq: Codable, Hashable, Sendable {
        public let attemptedAtTimestamp: Date?
        /// Optional executor organization note for the task attempt.
        public let executorOrgNote: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            attemptedAtTimestamp: Date? = nil,
            executorOrgNote: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.attemptedAtTimestamp = attemptedAtTimestamp
            self.executorOrgNote = executorOrgNote
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.attemptedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .attemptedAtTimestamp)
            self.executorOrgNote = try container.decodeIfPresent(String.self, forKey: .executorOrgNote)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.attemptedAtTimestamp, forKey: .attemptedAtTimestamp)
            try container.encodeIfPresent(self.executorOrgNote, forKey: .executorOrgNote)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case attemptedAtTimestamp = "attempted_at_timestamp"
            case executorOrgNote = "executor_org_note"
        }
    }
}