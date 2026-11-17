import Foundation

public struct RateSheetsExpandedListRes: Codable, Hashable, Sendable {
    public let counterpartyDrivers: [Driver1]
    public let counterpartyOffChrtOrgData: [OffChrtOrgData1]
    public let counterpartyOrgs: [OrgPublicData1]
    public let rateSheets: [RateSheet1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyDrivers: [Driver1],
        counterpartyOffChrtOrgData: [OffChrtOrgData1],
        counterpartyOrgs: [OrgPublicData1],
        rateSheets: [RateSheet1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyDrivers = counterpartyDrivers
        self.counterpartyOffChrtOrgData = counterpartyOffChrtOrgData
        self.counterpartyOrgs = counterpartyOrgs
        self.rateSheets = rateSheets
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyDrivers = try container.decode([Driver1].self, forKey: .counterpartyDrivers)
        self.counterpartyOffChrtOrgData = try container.decode([OffChrtOrgData1].self, forKey: .counterpartyOffChrtOrgData)
        self.counterpartyOrgs = try container.decode([OrgPublicData1].self, forKey: .counterpartyOrgs)
        self.rateSheets = try container.decode([RateSheet1].self, forKey: .rateSheets)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.counterpartyDrivers, forKey: .counterpartyDrivers)
        try container.encode(self.counterpartyOffChrtOrgData, forKey: .counterpartyOffChrtOrgData)
        try container.encode(self.counterpartyOrgs, forKey: .counterpartyOrgs)
        try container.encode(self.rateSheets, forKey: .rateSheets)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyDrivers = "counterparty_drivers"
        case counterpartyOffChrtOrgData = "counterparty_off_chrt_org_data"
        case counterpartyOrgs = "counterparty_orgs"
        case rateSheets = "rate_sheets"
    }
}