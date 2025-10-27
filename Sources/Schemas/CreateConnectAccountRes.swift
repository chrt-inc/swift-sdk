import Foundation

public struct CreateConnectAccountRes: Codable, Hashable, Sendable {
    public let stripeConnectAccountId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        stripeConnectAccountId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.stripeConnectAccountId = stripeConnectAccountId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.stripeConnectAccountId = try container.decode(String.self, forKey: .stripeConnectAccountId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.stripeConnectAccountId, forKey: .stripeConnectAccountId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case stripeConnectAccountId = "stripe_connect_account_id"
    }
}