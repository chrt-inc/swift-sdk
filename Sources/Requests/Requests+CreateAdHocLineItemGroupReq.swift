import Foundation

extension Requests {
    public struct CreateAdHocLineItemGroupReq: Codable, Hashable, Sendable {
        /// Payment vector type
        public let paymentVectorType: PaymentVectorTypeEnum1
        /// Settlement type for this line item group
        public let settlementType: SettlementTypeEnum1
        /// Payment origin org ID (on-CHRT org)
        public let paymentOriginOrgId: String?
        /// Payment origin off-CHRT shipper org ID
        public let paymentOriginOffChrtShipperOrgId: String?
        /// Payment destination org ID (on-CHRT org)
        public let paymentDestinationOrgId: String?
        /// Payment destination driver ID
        public let paymentDestinationDriverId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            paymentVectorType: PaymentVectorTypeEnum1,
            settlementType: SettlementTypeEnum1,
            paymentOriginOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentDestinationDriverId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.paymentVectorType = paymentVectorType
            self.settlementType = settlementType
            self.paymentOriginOrgId = paymentOriginOrgId
            self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.paymentVectorType = try container.decode(PaymentVectorTypeEnum1.self, forKey: .paymentVectorType)
            self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.paymentVectorType, forKey: .paymentVectorType)
            try container.encode(self.settlementType, forKey: .settlementType)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case paymentVectorType = "payment_vector_type"
            case settlementType = "settlement_type"
            case paymentOriginOrgId = "payment_origin_org_id"
            case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
        }
    }
}