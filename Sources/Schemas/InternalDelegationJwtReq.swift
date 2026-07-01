import Foundation

public struct InternalDelegationJwtReq: Codable, Hashable, Sendable {
    public let expiresInSeconds: Int
    public let stsPresignedUrl: String
    public let workflowActor: WorkflowActor
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expiresInSeconds: Int,
        stsPresignedUrl: String,
        workflowActor: WorkflowActor,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expiresInSeconds = expiresInSeconds
        self.stsPresignedUrl = stsPresignedUrl
        self.workflowActor = workflowActor
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expiresInSeconds = try container.decode(Int.self, forKey: .expiresInSeconds)
        self.stsPresignedUrl = try container.decode(String.self, forKey: .stsPresignedUrl)
        self.workflowActor = try container.decode(WorkflowActor.self, forKey: .workflowActor)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.expiresInSeconds, forKey: .expiresInSeconds)
        try container.encode(self.stsPresignedUrl, forKey: .stsPresignedUrl)
        try container.encode(self.workflowActor, forKey: .workflowActor)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expiresInSeconds = "expires_in_seconds"
        case stsPresignedUrl = "sts_presigned_url"
        case workflowActor = "workflow_actor"
    }
}