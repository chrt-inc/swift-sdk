import Foundation

public struct OperationsTaskTypeaheadResult: Codable, Hashable, Sendable {
    public let type: OperationsTaskTypeaheadFieldEnum
    public let values: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: OperationsTaskTypeaheadFieldEnum,
        values: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.values = values
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(OperationsTaskTypeaheadFieldEnum.self, forKey: .type)
        self.values = try container.decodeIfPresent([String].self, forKey: .values)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.values, forKey: .values)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case values
    }
}