import Foundation

public struct CargoAiAirWaybillMessageWebhookEvent1: Codable, Hashable, Sendable {
    public let id: String
    public let cargoaiAirWaybillMessageId: String?
    public let fwbStatus: String?
    public let mawbNumber: String?
    public let payload: [String: JSONValue]
    public let receivedAtTimestamp: Date
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cargoaiAirWaybillMessageId: String? = nil,
        fwbStatus: String? = nil,
        mawbNumber: String? = nil,
        payload: [String: JSONValue],
        receivedAtTimestamp: Date,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cargoaiAirWaybillMessageId = cargoaiAirWaybillMessageId
        self.fwbStatus = fwbStatus
        self.mawbNumber = mawbNumber
        self.payload = payload
        self.receivedAtTimestamp = receivedAtTimestamp
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cargoaiAirWaybillMessageId = try container.decodeIfPresent(String.self, forKey: .cargoaiAirWaybillMessageId)
        self.fwbStatus = try container.decodeIfPresent(String.self, forKey: .fwbStatus)
        self.mawbNumber = try container.decodeIfPresent(String.self, forKey: .mawbNumber)
        self.payload = try container.decode([String: JSONValue].self, forKey: .payload)
        self.receivedAtTimestamp = try container.decode(Date.self, forKey: .receivedAtTimestamp)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.cargoaiAirWaybillMessageId, forKey: .cargoaiAirWaybillMessageId)
        try container.encodeIfPresent(self.fwbStatus, forKey: .fwbStatus)
        try container.encodeIfPresent(self.mawbNumber, forKey: .mawbNumber)
        try container.encode(self.payload, forKey: .payload)
        try container.encode(self.receivedAtTimestamp, forKey: .receivedAtTimestamp)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cargoaiAirWaybillMessageId = "cargoai_air_waybill_message_id"
        case fwbStatus = "fwb_status"
        case mawbNumber = "mawb_number"
        case payload
        case receivedAtTimestamp = "received_at_timestamp"
        case schemaVersion = "schema_version"
    }
}