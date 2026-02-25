import Foundation

public struct CargoByDeviceMarkOutliersResponse1: Codable, Hashable, Sendable {
    public let failedUpdates: Int
    public let successfulUpdates: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        failedUpdates: Int,
        successfulUpdates: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.failedUpdates = failedUpdates
        self.successfulUpdates = successfulUpdates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.failedUpdates = try container.decode(Int.self, forKey: .failedUpdates)
        self.successfulUpdates = try container.decode(Int.self, forKey: .successfulUpdates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.failedUpdates, forKey: .failedUpdates)
        try container.encode(self.successfulUpdates, forKey: .successfulUpdates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case failedUpdates = "failed_updates"
        case successfulUpdates = "successful_updates"
    }
}