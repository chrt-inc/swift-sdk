import Foundation

extension Requests {
    public struct SetRateSheetsReq: Codable, Hashable, Sendable {
        public let shipperPayForwarderRateSheetId: String?
        public let forwarderPayCourierRateSheetId: String?
        public let shipperPayCourierRateSheetId: String?
        public let courierPayDriverRateSheetId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            shipperPayForwarderRateSheetId: String? = nil,
            forwarderPayCourierRateSheetId: String? = nil,
            shipperPayCourierRateSheetId: String? = nil,
            courierPayDriverRateSheetId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.shipperPayForwarderRateSheetId = shipperPayForwarderRateSheetId
            self.forwarderPayCourierRateSheetId = forwarderPayCourierRateSheetId
            self.shipperPayCourierRateSheetId = shipperPayCourierRateSheetId
            self.courierPayDriverRateSheetId = courierPayDriverRateSheetId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.shipperPayForwarderRateSheetId = try container.decodeIfPresent(String.self, forKey: .shipperPayForwarderRateSheetId)
            self.forwarderPayCourierRateSheetId = try container.decodeIfPresent(String.self, forKey: .forwarderPayCourierRateSheetId)
            self.shipperPayCourierRateSheetId = try container.decodeIfPresent(String.self, forKey: .shipperPayCourierRateSheetId)
            self.courierPayDriverRateSheetId = try container.decodeIfPresent(String.self, forKey: .courierPayDriverRateSheetId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.shipperPayForwarderRateSheetId, forKey: .shipperPayForwarderRateSheetId)
            try container.encodeIfPresent(self.forwarderPayCourierRateSheetId, forKey: .forwarderPayCourierRateSheetId)
            try container.encodeIfPresent(self.shipperPayCourierRateSheetId, forKey: .shipperPayCourierRateSheetId)
            try container.encodeIfPresent(self.courierPayDriverRateSheetId, forKey: .courierPayDriverRateSheetId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case shipperPayForwarderRateSheetId = "shipper_pay_forwarder_rate_sheet_id"
            case forwarderPayCourierRateSheetId = "forwarder_pay_courier_rate_sheet_id"
            case shipperPayCourierRateSheetId = "shipper_pay_courier_rate_sheet_id"
            case courierPayDriverRateSheetId = "courier_pay_driver_rate_sheet_id"
        }
    }
}