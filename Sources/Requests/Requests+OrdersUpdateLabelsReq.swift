import Foundation

extension Requests {
    public struct OrdersUpdateLabelsReq: Codable, Hashable, Sendable {
        public let labels: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            labels: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.labels = labels
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.labels = try container.decodeIfPresent([String].self, forKey: .labels)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.labels, forKey: .labels)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case labels
        }
    }
}