import Foundation

extension Requests {
    public struct TaskSkipReq: Codable, Hashable, Sendable {
        public let skippedAtTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            skippedAtTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.skippedAtTimestamp = skippedAtTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.skippedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .skippedAtTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.skippedAtTimestamp, forKey: .skippedAtTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case skippedAtTimestamp = "skipped_at_timestamp"
        }
    }
}