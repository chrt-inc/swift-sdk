import Foundation

public struct InternalDelegationTokenReq: Codable, Hashable, Sendable {
    public let stsPresignedUrl: String
    public let actor: WorkflowActorContext
    public let expiresInSeconds: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        stsPresignedUrl: String,
        actor: WorkflowActorContext,
        expiresInSeconds: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.stsPresignedUrl = stsPresignedUrl
        self.actor = actor
        self.expiresInSeconds = expiresInSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.stsPresignedUrl = try container.decode(String.self, forKey: .stsPresignedUrl)
        self.actor = try container.decode(WorkflowActorContext.self, forKey: .actor)
        self.expiresInSeconds = try container.decode(Int.self, forKey: .expiresInSeconds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.stsPresignedUrl, forKey: .stsPresignedUrl)
        try container.encode(self.actor, forKey: .actor)
        try container.encode(self.expiresInSeconds, forKey: .expiresInSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case stsPresignedUrl = "sts_presigned_url"
        case actor
        case expiresInSeconds = "expires_in_seconds"
    }
}