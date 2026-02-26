import Foundation

public struct CargoByDeviceMarkOutliersResponse1: Codable, Hashable, Sendable {
    public let successfulUpdates: Int
    public let failedUpdates: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        successfulUpdates: Int,
        failedUpdates: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.successfulUpdates = successfulUpdates
        self.failedUpdates = failedUpdates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.successfulUpdates = try container.decode(Int.self, forKey: .successfulUpdates)
        self.failedUpdates = try container.decode(Int.self, forKey: .failedUpdates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.successfulUpdates, forKey: .successfulUpdates)
        try container.encode(self.failedUpdates, forKey: .failedUpdates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case successfulUpdates = "successful_updates"
        case failedUpdates = "failed_updates"
    }
}