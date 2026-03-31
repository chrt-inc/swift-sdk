import Foundation

extension Requests {
    public struct GenerateShippingDocReq: Codable, Hashable, Sendable {
        public let orderRef: String
        public let template: ShippingDocTemplateEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderRef: String,
            template: ShippingDocTemplateEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderRef = orderRef
            self.template = template
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderRef = try container.decode(String.self, forKey: .orderRef)
            self.template = try container.decode(ShippingDocTemplateEnum.self, forKey: .template)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderRef, forKey: .orderRef)
            try container.encode(self.template, forKey: .template)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderRef = "order_ref"
            case template
        }
    }
}