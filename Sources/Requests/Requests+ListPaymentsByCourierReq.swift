import Foundation

extension Requests {
    public struct ListPaymentsByCourierReq: Codable, Hashable, Sendable {
        public let statuses: [StripeConnectInvoiceStatusEnum]
        /// Must be a string starting with `org_`
        public let shipperOrgId: Nullable<String>?
        public let offChrtShipperOrgInfoId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            statuses: [StripeConnectInvoiceStatusEnum],
            shipperOrgId: Nullable<String>? = nil,
            offChrtShipperOrgInfoId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.statuses = statuses
            self.shipperOrgId = shipperOrgId
            self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.statuses = try container.decode([StripeConnectInvoiceStatusEnum].self, forKey: .statuses)
            self.shipperOrgId = try container.decodeNullableIfPresent(String.self, forKey: .shipperOrgId)
            self.offChrtShipperOrgInfoId = try container.decodeNullableIfPresent(String.self, forKey: .offChrtShipperOrgInfoId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.statuses, forKey: .statuses)
            try container.encodeNullableIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeNullableIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case statuses
            case shipperOrgId = "shipper_org_id"
            case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
        }
    }
}