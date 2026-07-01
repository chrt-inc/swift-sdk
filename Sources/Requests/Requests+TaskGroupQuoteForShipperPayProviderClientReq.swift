import Foundation

extension Requests {
    public struct TaskGroupQuoteForShipperPayProviderClientReq: Codable, Hashable, Sendable {
        public let offChrtShipperOrgId: String?
        public let rateSheetId: String?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            offChrtShipperOrgId: String? = nil,
            rateSheetId: String? = nil,
            shipperOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.rateSheetId = rateSheetId
            self.shipperOrgId = shipperOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case rateSheetId = "rate_sheet_id"
            case shipperOrgId = "shipper_org_id"
        }
    }
}