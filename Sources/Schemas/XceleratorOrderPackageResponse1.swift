import Foundation

public struct XceleratorOrderPackageResponse1: Codable, Hashable, Sendable {
    public let packageCount: Int?
    public let packageName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        packageCount: Int? = nil,
        packageName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.packageCount = packageCount
        self.packageName = packageName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.packageCount = try container.decodeIfPresent(Int.self, forKey: .packageCount)
        self.packageName = try container.decodeIfPresent(String.self, forKey: .packageName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.packageCount, forKey: .packageCount)
        try container.encodeIfPresent(self.packageName, forKey: .packageName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case packageCount = "PackageCount"
        case packageName = "PackageName"
    }
}