import Foundation

public struct RateSheetMapping1: Codable, Hashable, Sendable {
    public let id: String
    public let cargoOnFlightRateSheetIds: [String]?
    public let chrtGroundProviderRateSheetIds: [String]?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtProviderOrgId: String?
    public let counterpartyOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let onboardCourierRateSheetIds: [String]?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cargoOnFlightRateSheetIds: [String]? = nil,
        chrtGroundProviderRateSheetIds: [String]? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtProviderOrgId: String? = nil,
        counterpartyOffChrtShipperOrgId: String? = nil,
        counterpartyOrgId: String? = nil,
        onboardCourierRateSheetIds: [String]? = nil,
        ownedByOrgId: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cargoOnFlightRateSheetIds = cargoOnFlightRateSheetIds
        self.chrtGroundProviderRateSheetIds = chrtGroundProviderRateSheetIds
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtProviderOrgId = counterpartyOffChrtProviderOrgId
        self.counterpartyOffChrtShipperOrgId = counterpartyOffChrtShipperOrgId
        self.counterpartyOrgId = counterpartyOrgId
        self.onboardCourierRateSheetIds = onboardCourierRateSheetIds
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cargoOnFlightRateSheetIds = try container.decodeIfPresent([String].self, forKey: .cargoOnFlightRateSheetIds)
        self.chrtGroundProviderRateSheetIds = try container.decodeIfPresent([String].self, forKey: .chrtGroundProviderRateSheetIds)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtProviderOrgId)
        self.counterpartyOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtShipperOrgId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.onboardCourierRateSheetIds = try container.decodeIfPresent([String].self, forKey: .onboardCourierRateSheetIds)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.cargoOnFlightRateSheetIds, forKey: .cargoOnFlightRateSheetIds)
        try container.encodeIfPresent(self.chrtGroundProviderRateSheetIds, forKey: .chrtGroundProviderRateSheetIds)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtProviderOrgId, forKey: .counterpartyOffChrtProviderOrgId)
        try container.encodeIfPresent(self.counterpartyOffChrtShipperOrgId, forKey: .counterpartyOffChrtShipperOrgId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encodeIfPresent(self.onboardCourierRateSheetIds, forKey: .onboardCourierRateSheetIds)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cargoOnFlightRateSheetIds = "cargo_on_flight_rate_sheet_ids"
        case chrtGroundProviderRateSheetIds = "chrt_ground_provider_rate_sheet_ids"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtProviderOrgId = "counterparty_off_chrt_provider_org_id"
        case counterpartyOffChrtShipperOrgId = "counterparty_off_chrt_shipper_org_id"
        case counterpartyOrgId = "counterparty_org_id"
        case onboardCourierRateSheetIds = "onboard_courier_rate_sheet_ids"
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
    }
}