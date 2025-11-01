import Foundation

extension Requests {
    public struct ListPaymentsByShipperReq: Codable, Hashable, Sendable {
        public let statuses: [StripeConnectInvoiceStatusEnum]
        /// Must be a string starting with `org_`
        public let courierOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            statuses: [StripeConnectInvoiceStatusEnum],
            courierOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.statuses = statuses
            self.courierOrgId = courierOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.statuses = try container.decode([StripeConnectInvoiceStatusEnum].self, forKey: .statuses)
            self.courierOrgId = try container.decodeIfPresent(String.self, forKey: .courierOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.statuses, forKey: .statuses)
            try container.encodeIfPresent(self.courierOrgId, forKey: .courierOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case statuses
            case courierOrgId = "courier_org_id"
        }
    }
}