import Foundation

extension Requests {
    public struct LineItemGroupAdHocCreateClientReq: Codable, Hashable, Sendable {
        public let lineItems: [LineItemClientCreate1]?
        public let orderGroupId: String?
        /// Must be a string starting with `org_`
        public let ownedByOrgId: String
        public let paymentDestinationDriverId: String?
        public let paymentDestinationOffChrtProviderOrgId: String?
        public let paymentDestinationOffChrtVendorId: String?
        /// Must be a string starting with `org_`
        public let paymentDestinationOrgId: String?
        public let paymentOriginOffChrtShipperOrgId: String?
        /// Must be a string starting with `org_`
        public let paymentOriginOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lineItems: [LineItemClientCreate1]? = nil,
            orderGroupId: String? = nil,
            ownedByOrgId: String,
            paymentDestinationDriverId: String? = nil,
            paymentDestinationOffChrtProviderOrgId: String? = nil,
            paymentDestinationOffChrtVendorId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgId: String? = nil,
            paymentOriginOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lineItems = lineItems
            self.orderGroupId = orderGroupId
            self.ownedByOrgId = ownedByOrgId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
            self.paymentDestinationOffChrtVendorId = paymentDestinationOffChrtVendorId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
            self.paymentOriginOrgId = paymentOriginOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lineItems = try container.decodeIfPresent([LineItemClientCreate1].self, forKey: .lineItems)
            self.orderGroupId = try container.decodeIfPresent(String.self, forKey: .orderGroupId)
            self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
            self.paymentDestinationOffChrtVendorId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtVendorId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
            try container.encodeIfPresent(self.orderGroupId, forKey: .orderGroupId)
            try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
            try container.encodeIfPresent(self.paymentDestinationOffChrtVendorId, forKey: .paymentDestinationOffChrtVendorId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lineItems = "line_items"
            case orderGroupId = "order_group_id"
            case ownedByOrgId = "owned_by_org_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
            case paymentDestinationOffChrtVendorId = "payment_destination_off_chrt_vendor_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
            case paymentOriginOrgId = "payment_origin_org_id"
        }
    }
}