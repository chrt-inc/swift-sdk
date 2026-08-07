import Foundation

extension Requests {
    public struct OrderInformationConversationClientUpdate1: Codable, Hashable, Sendable {
        public let title: String?
        public let titleSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            title: String? = nil,
            titleSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.title = title
            self.titleSetToNone = titleSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.titleSetToNone = try container.decodeIfPresent(Bool.self, forKey: .titleSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encodeIfPresent(self.titleSetToNone, forKey: .titleSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case title
            case titleSetToNone = "title__set_to_None"
        }
    }
}