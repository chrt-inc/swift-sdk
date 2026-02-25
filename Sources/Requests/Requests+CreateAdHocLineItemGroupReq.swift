import Foundation

extension Requests {
    public struct CreateAdHocLineItemGroupReq: Codable, Hashable, Sendable {
        /// Payment destination driver ID
        public let paymentDestinationDriverId: String?
        /// Payment destination org ID (on-CHRT org)
        public let paymentDestinationOrgId: String?
        /// Payment origin off-CHRT shipper org ID
        public let paymentOriginOffChrtShipperOrgId: String?
        /// Payment origin org ID (on-CHRT org)
        public let paymentOriginOrgId: String?
        /// Payment vector type
        public let paymentVectorType: PaymentVectorTypeEnum1
        /// Settlement type for this line item group
        public let settlementType: SettlementTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            paymentDestinationDriverId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgId: String? = nil,
            paymentOriginOrgId: String? = nil,
            paymentVectorType: PaymentVectorTypeEnum1,
            settlementType: SettlementTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
            self.paymentOriginOrgId = paymentOriginOrgId
            self.paymentVectorType = paymentVectorType
            self.settlementType = settlementType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.paymentVectorType = try container.decode(PaymentVectorTypeEnum1.self, forKey: .paymentVectorType)
            self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
            try container.encode(self.paymentVectorType, forKey: .paymentVectorType)
            try container.encode(self.settlementType, forKey: .settlementType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
            case paymentOriginOrgId = "payment_origin_org_id"
            case paymentVectorType = "payment_vector_type"
            case settlementType = "settlement_type"
        }
    }
}