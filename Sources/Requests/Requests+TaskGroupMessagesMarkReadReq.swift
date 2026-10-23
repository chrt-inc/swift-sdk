import Foundation

extension Requests {
    public struct TaskGroupMessagesMarkReadReq: Codable, Hashable, Sendable {
        public let lastReadMessageTimestamp: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lastReadMessageTimestamp: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lastReadMessageTimestamp = lastReadMessageTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lastReadMessageTimestamp = try container.decode(Date.self, forKey: .lastReadMessageTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.lastReadMessageTimestamp, forKey: .lastReadMessageTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lastReadMessageTimestamp = "last_read_message_timestamp"
        }
    }
}