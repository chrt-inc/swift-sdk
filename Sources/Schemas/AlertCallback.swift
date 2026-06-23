import Foundation

public struct AlertCallback: Codable, Hashable, Sendable {
    public let alert: AlertMessage?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        alert: AlertMessage? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.alert = alert
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.alert = try container.decodeIfPresent(AlertMessage.self, forKey: .alert)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.alert, forKey: .alert)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case alert
    }
}