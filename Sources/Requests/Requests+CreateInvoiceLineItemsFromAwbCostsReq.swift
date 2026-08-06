import Foundation

extension Requests {
    public struct CreateInvoiceLineItemsFromAwbCostsReq: Codable, Hashable, Sendable {
        public let awbCosts: [CreateInvoiceLineItemsFromAwbCostsItem1]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbCosts: [CreateInvoiceLineItemsFromAwbCostsItem1],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbCosts = awbCosts
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbCosts = try container.decode([CreateInvoiceLineItemsFromAwbCostsItem1].self, forKey: .awbCosts)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.awbCosts, forKey: .awbCosts)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbCosts = "awb_costs"
        }
    }
}