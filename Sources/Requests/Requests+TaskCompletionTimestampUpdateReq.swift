import Foundation

extension Requests {
    public struct TaskCompletionTimestampUpdateReq: Codable, Hashable, Sendable {
        public let completedAtTimestamp: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            completedAtTimestamp: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.completedAtTimestamp = completedAtTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.completedAtTimestamp = try container.decode(Date.self, forKey: .completedAtTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case completedAtTimestamp = "completed_at_timestamp"
        }
    }
}