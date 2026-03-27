import Foundation

extension Requests {
    public struct GenerateShippingDocReq: Codable, Hashable, Sendable {
        public let orderIdOrShortId: String
        public let template: ShippingDocTemplateEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderIdOrShortId: String,
            template: ShippingDocTemplateEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderIdOrShortId = orderIdOrShortId
            self.template = template
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderIdOrShortId = try container.decode(String.self, forKey: .orderIdOrShortId)
            self.template = try container.decode(ShippingDocTemplateEnum.self, forKey: .template)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderIdOrShortId, forKey: .orderIdOrShortId)
            try container.encode(self.template, forKey: .template)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderIdOrShortId = "order_id_or_short_id"
            case template
        }
    }
}