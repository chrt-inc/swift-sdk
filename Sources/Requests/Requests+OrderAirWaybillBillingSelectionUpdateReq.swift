import Foundation

extension Requests {
    public struct OrderAirWaybillBillingSelectionUpdateReq: Codable, Hashable, Sendable {
        /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
        public let awbNumber: String
        public let billingType: AirWaybillBillingTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbNumber: String,
            billingType: AirWaybillBillingTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbNumber = awbNumber
            self.billingType = billingType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
            self.billingType = try container.decode(AirWaybillBillingTypeEnum1.self, forKey: .billingType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.awbNumber, forKey: .awbNumber)
            try container.encode(self.billingType, forKey: .billingType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbNumber = "awb_number"
            case billingType = "billing_type"
        }
    }
}