import Foundation

public struct OrgProfileRes1: Codable, Hashable, Sendable {
    public let courierOrgProfile: CourierOrgProfile1?
    public let forwarderOrgProfile: ForwarderOrgProfile1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        courierOrgProfile: CourierOrgProfile1? = nil,
        forwarderOrgProfile: ForwarderOrgProfile1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.courierOrgProfile = courierOrgProfile
        self.forwarderOrgProfile = forwarderOrgProfile
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.courierOrgProfile = try container.decodeIfPresent(CourierOrgProfile1.self, forKey: .courierOrgProfile)
        self.forwarderOrgProfile = try container.decodeIfPresent(ForwarderOrgProfile1.self, forKey: .forwarderOrgProfile)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.courierOrgProfile, forKey: .courierOrgProfile)
        try container.encodeIfPresent(self.forwarderOrgProfile, forKey: .forwarderOrgProfile)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case courierOrgProfile = "courier_org_profile"
        case forwarderOrgProfile = "forwarder_org_profile"
    }
}