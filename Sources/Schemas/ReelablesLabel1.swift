import Foundation

public struct ReelablesLabel1: Codable, Hashable, Sendable {
    public let addedAtTimestamp: Date
    public let bleId: Int
    public let configReportingInterval: String?
    public let nfcId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addedAtTimestamp: Date,
        bleId: Int,
        configReportingInterval: String? = nil,
        nfcId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addedAtTimestamp = addedAtTimestamp
        self.bleId = bleId
        self.configReportingInterval = configReportingInterval
        self.nfcId = nfcId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addedAtTimestamp = try container.decode(Date.self, forKey: .addedAtTimestamp)
        self.bleId = try container.decode(Int.self, forKey: .bleId)
        self.configReportingInterval = try container.decodeIfPresent(String.self, forKey: .configReportingInterval)
        self.nfcId = try container.decode(String.self, forKey: .nfcId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.addedAtTimestamp, forKey: .addedAtTimestamp)
        try container.encode(self.bleId, forKey: .bleId)
        try container.encodeIfPresent(self.configReportingInterval, forKey: .configReportingInterval)
        try container.encode(self.nfcId, forKey: .nfcId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addedAtTimestamp = "added_at_timestamp"
        case bleId = "ble_id"
        case configReportingInterval = "config__reporting_interval"
        case nfcId = "nfc_id"
    }
}