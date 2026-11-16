import Foundation

extension Requests {
    public struct TaskAttemptTimestampUpdateReq: Codable, Hashable, Sendable {
        public let attemptedAtTimestamp: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            attemptedAtTimestamp: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.attemptedAtTimestamp = attemptedAtTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.attemptedAtTimestamp = try container.decode(Date.self, forKey: .attemptedAtTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.attemptedAtTimestamp, forKey: .attemptedAtTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case attemptedAtTimestamp = "attempted_at_timestamp"
        }
    }
}