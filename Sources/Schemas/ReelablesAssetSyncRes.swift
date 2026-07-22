import Foundation

public struct ReelablesAssetSyncRes: Codable, Hashable, Sendable {
    public let syncedAssetCount: Int
    public let workspace: ReelablesWorkspace1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        syncedAssetCount: Int,
        workspace: ReelablesWorkspace1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.syncedAssetCount = syncedAssetCount
        self.workspace = workspace
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.syncedAssetCount = try container.decode(Int.self, forKey: .syncedAssetCount)
        self.workspace = try container.decode(ReelablesWorkspace1.self, forKey: .workspace)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.syncedAssetCount, forKey: .syncedAssetCount)
        try container.encode(self.workspace, forKey: .workspace)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case syncedAssetCount = "synced_asset_count"
        case workspace
    }
}