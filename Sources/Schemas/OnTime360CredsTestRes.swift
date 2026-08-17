import Foundation

/// Result of testing whether a stored OnTime360 credential still works.
public struct OnTime360CredsTestRes: Codable, Hashable, Sendable {
    public let failureReason: String?
    public let ok: Bool
    public let providerAccountLabel: String?
    public let providerReportedTimeZones: [String]?
    public let siteTimeZone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        failureReason: String? = nil,
        ok: Bool,
        providerAccountLabel: String? = nil,
        providerReportedTimeZones: [String]? = nil,
        siteTimeZone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.failureReason = failureReason
        self.ok = ok
        self.providerAccountLabel = providerAccountLabel
        self.providerReportedTimeZones = providerReportedTimeZones
        self.siteTimeZone = siteTimeZone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.failureReason = try container.decodeIfPresent(String.self, forKey: .failureReason)
        self.ok = try container.decode(Bool.self, forKey: .ok)
        self.providerAccountLabel = try container.decodeIfPresent(String.self, forKey: .providerAccountLabel)
        self.providerReportedTimeZones = try container.decodeIfPresent([String].self, forKey: .providerReportedTimeZones)
        self.siteTimeZone = try container.decodeIfPresent(String.self, forKey: .siteTimeZone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.failureReason, forKey: .failureReason)
        try container.encode(self.ok, forKey: .ok)
        try container.encodeIfPresent(self.providerAccountLabel, forKey: .providerAccountLabel)
        try container.encodeIfPresent(self.providerReportedTimeZones, forKey: .providerReportedTimeZones)
        try container.encodeIfPresent(self.siteTimeZone, forKey: .siteTimeZone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case failureReason = "failure_reason"
        case ok
        case providerAccountLabel = "provider_account_label"
        case providerReportedTimeZones = "provider_reported_time_zones"
        case siteTimeZone = "site_time_zone"
    }
}