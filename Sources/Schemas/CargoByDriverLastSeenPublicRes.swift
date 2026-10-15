import Foundation

public struct CargoByDriverLastSeenPublicRes: Codable, Hashable, Sendable {
    public let cargoStatus: CargoStatusEnum1
    public let location: LocationFeature?
    public let publicLinkExpiresAtTimestamp: Date?
    public let timestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoStatus: CargoStatusEnum1,
        location: LocationFeature? = nil,
        publicLinkExpiresAtTimestamp: Date? = nil,
        timestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoStatus = cargoStatus
        self.location = location
        self.publicLinkExpiresAtTimestamp = publicLinkExpiresAtTimestamp
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoStatus = try container.decode(CargoStatusEnum1.self, forKey: .cargoStatus)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.publicLinkExpiresAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .publicLinkExpiresAtTimestamp)
        self.timestamp = try container.decodeIfPresent(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoStatus, forKey: .cargoStatus)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.publicLinkExpiresAtTimestamp, forKey: .publicLinkExpiresAtTimestamp)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoStatus = "cargo_status"
        case location
        case publicLinkExpiresAtTimestamp = "public_link_expires_at_timestamp"
        case timestamp
    }
}