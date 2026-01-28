import Foundation

extension Requests {
    public struct NotificationReq: Codable, Hashable, Sendable {
        public let recipient: ChrtEmailRecipient
        public let name: String
        public let message: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            recipient: ChrtEmailRecipient,
            name: String,
            message: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.recipient = recipient
            self.name = name
            self.message = message
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.recipient = try container.decode(ChrtEmailRecipient.self, forKey: .recipient)
            self.name = try container.decode(String.self, forKey: .name)
            self.message = try container.decode(String.self, forKey: .message)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.recipient, forKey: .recipient)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.message, forKey: .message)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case recipient
            case name
            case message
        }
    }
}