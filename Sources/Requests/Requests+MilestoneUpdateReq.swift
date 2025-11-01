import Foundation

extension Requests {
    public struct MilestoneUpdateReq: Codable, Hashable, Sendable {
        public let milestoneId: String
        public let completed: Bool?
        public let completorComments: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            milestoneId: String,
            completed: Bool? = nil,
            completorComments: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.milestoneId = milestoneId
            self.completed = completed
            self.completorComments = completorComments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.milestoneId = try container.decode(String.self, forKey: .milestoneId)
            self.completed = try container.decodeIfPresent(Bool.self, forKey: .completed)
            self.completorComments = try container.decodeIfPresent(String.self, forKey: .completorComments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.milestoneId, forKey: .milestoneId)
            try container.encodeIfPresent(self.completed, forKey: .completed)
            try container.encodeIfPresent(self.completorComments, forKey: .completorComments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case milestoneId = "milestone_id"
            case completed
            case completorComments = "completor_comments"
        }
    }
}