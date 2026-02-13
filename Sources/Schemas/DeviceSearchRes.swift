import Foundation

public struct DeviceSearchRes: Codable, Hashable, Sendable {
    public let devices: [Device1]
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        devices: [Device1],
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.devices = devices
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.devices = try container.decode([Device1].self, forKey: .devices)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.devices, forKey: .devices)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case devices
        case totalCount = "total_count"
    }
}