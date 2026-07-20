import Foundation

extension Requests {
    public struct StatementCreateClientReq: Codable, Hashable, Sendable {
        public let orderGroupId: String?
        public let paymentDestinationDriverId: String?
        public let paymentDestinationOffChrtProviderOrgDataId: String?
        /// Must be a string starting with `org_`
        public let paymentDestinationOrgId: String?
        public let paymentOriginOffChrtShipperOrgDataId: String?
        /// Must be a string starting with `org_`
        public let paymentOriginOrgId: String?
        public let settlementType: SettlementTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderGroupId: String? = nil,
            paymentDestinationDriverId: String? = nil,
            paymentDestinationOffChrtProviderOrgDataId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgDataId: String? = nil,
            paymentOriginOrgId: String? = nil,
            settlementType: SettlementTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderGroupId = orderGroupId
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.paymentDestinationOffChrtProviderOrgDataId = paymentDestinationOffChrtProviderOrgDataId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentOriginOffChrtShipperOrgDataId = paymentOriginOffChrtShipperOrgDataId
            self.paymentOriginOrgId = paymentOriginOrgId
            self.settlementType = settlementType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderGroupId = try container.decodeIfPresent(String.self, forKey: .orderGroupId)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.paymentDestinationOffChrtProviderOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgDataId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentOriginOffChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgDataId)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.settlementType = try container.decode(SettlementTypeEnum1.self, forKey: .settlementType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.orderGroupId, forKey: .orderGroupId)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgDataId, forKey: .paymentDestinationOffChrtProviderOrgDataId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgDataId, forKey: .paymentOriginOffChrtShipperOrgDataId)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
            try container.encode(self.settlementType, forKey: .settlementType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderGroupId = "order_group_id"
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case paymentDestinationOffChrtProviderOrgDataId = "payment_destination_off_chrt_provider_org_data_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentOriginOffChrtShipperOrgDataId = "payment_origin_off_chrt_shipper_org_data_id"
            case paymentOriginOrgId = "payment_origin_org_id"
            case settlementType = "settlement_type"
        }
    }
}