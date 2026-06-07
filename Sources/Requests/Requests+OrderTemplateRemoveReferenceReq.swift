import Foundation

extension Requests {
    public struct OrderTemplateRemoveReferenceReq: Codable, Hashable, Sendable {
        public let column: OrderTemplateReferenceColumnEnum1
        public let objectId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            column: OrderTemplateReferenceColumnEnum1,
            objectId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.column = column
            self.objectId = objectId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.column = try container.decode(OrderTemplateReferenceColumnEnum1.self, forKey: .column)
            self.objectId = try container.decodeIfPresent(String.self, forKey: .objectId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.column, forKey: .column)
            try container.encodeIfPresent(self.objectId, forKey: .objectId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case column
            case objectId = "object_id"
        }
    }
}