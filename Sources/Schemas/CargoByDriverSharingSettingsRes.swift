import Foundation

public struct CargoByDriverSharingSettingsRes: Codable, Hashable, Sendable {
    public let publicLinkExpiresAtTimestamp: Date?
    public let sharingSettings: CargoByDriverSharingSettings1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        publicLinkExpiresAtTimestamp: Date? = nil,
        sharingSettings: CargoByDriverSharingSettings1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.publicLinkExpiresAtTimestamp = publicLinkExpiresAtTimestamp
        self.sharingSettings = sharingSettings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.publicLinkExpiresAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .publicLinkExpiresAtTimestamp)
        self.sharingSettings = try container.decodeIfPresent(CargoByDriverSharingSettings1.self, forKey: .sharingSettings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.publicLinkExpiresAtTimestamp, forKey: .publicLinkExpiresAtTimestamp)
        try container.encodeIfPresent(self.sharingSettings, forKey: .sharingSettings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case publicLinkExpiresAtTimestamp = "public_link_expires_at_timestamp"
        case sharingSettings = "sharing_settings"
    }
}