import Foundation

public struct ProviderOnAndOffChrtExecutorListRes: Codable, Hashable, Sendable {
    public let offChrtExecutors: ProviderOnAndOffChrtExecutorListPage
    public let onChrtExecutors: ProviderOnAndOffChrtExecutorListPage
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        offChrtExecutors: ProviderOnAndOffChrtExecutorListPage,
        onChrtExecutors: ProviderOnAndOffChrtExecutorListPage,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.offChrtExecutors = offChrtExecutors
        self.onChrtExecutors = onChrtExecutors
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offChrtExecutors = try container.decode(ProviderOnAndOffChrtExecutorListPage.self, forKey: .offChrtExecutors)
        self.onChrtExecutors = try container.decode(ProviderOnAndOffChrtExecutorListPage.self, forKey: .onChrtExecutors)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.offChrtExecutors, forKey: .offChrtExecutors)
        try container.encode(self.onChrtExecutors, forKey: .onChrtExecutors)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case offChrtExecutors = "off_chrt_executors"
        case onChrtExecutors = "on_chrt_executors"
    }
}