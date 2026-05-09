import Foundation

extension Requests {
    public struct LineItemGroupAdHocCreateClientReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let ownedByOrgId: String
        /// Must be a string starting with `org_`
        public let paymentOriginOrgId: String?
        public let paymentOriginOffChrtShipperOrgId: String?
        /// Must be a string starting with `org_`
        public let paymentDestinationOrgId: String?
        public let paymentDestinationOffChrtProviderOrgId: String?
        public let paymentDestinationDriverId: String?
        public let lineItems: [LineItemClientCreate1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            ownedByOrgId: String,
            paymentOriginOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentDestinationOffChrtProviderOrgId: String? = nil,
            paymentDestinationDriverId: String? = nil,
            lineItems: [LineItemClientCreate1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.ownedByOrgId = ownedByOrgId
            self.paymentOriginOrgId = paymentOriginOrgId
            self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.lineItems = lineItems
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.lineItems = try container.decodeIfPresent([LineItemClientCreate1].self, forKey: .lineItems)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case ownedByOrgId = "owned_by_org_id"
            case paymentOriginOrgId = "payment_origin_org_id"
            case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case lineItems = "line_items"
        }
    }
}