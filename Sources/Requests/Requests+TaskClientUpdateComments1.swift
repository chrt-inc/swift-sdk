import Foundation

extension Requests {
    public struct TaskClientUpdateComments1: Codable, Hashable, Sendable {
        public let orderPlacerComments: String?
        public let orderPlacerCommentsSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderPlacerComments: String? = nil,
            orderPlacerCommentsSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderPlacerComments = orderPlacerComments
            self.orderPlacerCommentsSetToNone = orderPlacerCommentsSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
            self.orderPlacerCommentsSetToNone = try container.decodeIfPresent(Bool.self, forKey: .orderPlacerCommentsSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
            try container.encodeIfPresent(self.orderPlacerCommentsSetToNone, forKey: .orderPlacerCommentsSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderPlacerComments = "order_placer_comments"
            case orderPlacerCommentsSetToNone = "order_placer_comments__set_to_None"
        }
    }
}