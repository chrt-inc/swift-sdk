import Foundation

extension Requests {
    public struct RateSheetMappingClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let counterpartyDriverId: String?
        public let counterpartyOffChrtProviderOrgId: String?
        public let counterpartyOffChrtShipperOrgId: String?
        public let chrtGroundProviderRateSheetIds: [String]?
        public let cargoOnFlightRateSheetIds: [String]?
        public let onboardCourierRateSheetIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            counterpartyOrgId: String? = nil,
            counterpartyDriverId: String? = nil,
            counterpartyOffChrtProviderOrgId: String? = nil,
            counterpartyOffChrtShipperOrgId: String? = nil,
            chrtGroundProviderRateSheetIds: [String]? = nil,
            cargoOnFlightRateSheetIds: [String]? = nil,
            onboardCourierRateSheetIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.counterpartyOrgId = counterpartyOrgId
            self.counterpartyDriverId = counterpartyDriverId
            self.counterpartyOffChrtProviderOrgId = counterpartyOffChrtProviderOrgId
            self.counterpartyOffChrtShipperOrgId = counterpartyOffChrtShipperOrgId
            self.chrtGroundProviderRateSheetIds = chrtGroundProviderRateSheetIds
            self.cargoOnFlightRateSheetIds = cargoOnFlightRateSheetIds
            self.onboardCourierRateSheetIds = onboardCourierRateSheetIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
            self.counterpartyOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtProviderOrgId)
            self.counterpartyOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtShipperOrgId)
            self.chrtGroundProviderRateSheetIds = try container.decodeIfPresent([String].self, forKey: .chrtGroundProviderRateSheetIds)
            self.cargoOnFlightRateSheetIds = try container.decodeIfPresent([String].self, forKey: .cargoOnFlightRateSheetIds)
            self.onboardCourierRateSheetIds = try container.decodeIfPresent([String].self, forKey: .onboardCourierRateSheetIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
            try container.encodeIfPresent(self.counterpartyOffChrtProviderOrgId, forKey: .counterpartyOffChrtProviderOrgId)
            try container.encodeIfPresent(self.counterpartyOffChrtShipperOrgId, forKey: .counterpartyOffChrtShipperOrgId)
            try container.encodeIfPresent(self.chrtGroundProviderRateSheetIds, forKey: .chrtGroundProviderRateSheetIds)
            try container.encodeIfPresent(self.cargoOnFlightRateSheetIds, forKey: .cargoOnFlightRateSheetIds)
            try container.encodeIfPresent(self.onboardCourierRateSheetIds, forKey: .onboardCourierRateSheetIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case counterpartyOrgId = "counterparty_org_id"
            case counterpartyDriverId = "counterparty_driver_id"
            case counterpartyOffChrtProviderOrgId = "counterparty_off_chrt_provider_org_id"
            case counterpartyOffChrtShipperOrgId = "counterparty_off_chrt_shipper_org_id"
            case chrtGroundProviderRateSheetIds = "chrt_ground_provider_rate_sheet_ids"
            case cargoOnFlightRateSheetIds = "cargo_on_flight_rate_sheet_ids"
            case onboardCourierRateSheetIds = "onboard_courier_rate_sheet_ids"
        }
    }
}