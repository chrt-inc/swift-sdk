import Foundation

public struct InternalDelegationJwtReq: Codable, Hashable, Sendable {
    public let stsPresignedUrl: String
    public let workflowActor: WorkflowActor
    public let expiresInSeconds: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        stsPresignedUrl: String,
        workflowActor: WorkflowActor,
        expiresInSeconds: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.stsPresignedUrl = stsPresignedUrl
        self.workflowActor = workflowActor
        self.expiresInSeconds = expiresInSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.stsPresignedUrl = try container.decode(String.self, forKey: .stsPresignedUrl)
        self.workflowActor = try container.decode(WorkflowActor.self, forKey: .workflowActor)
        self.expiresInSeconds = try container.decode(Int.self, forKey: .expiresInSeconds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.stsPresignedUrl, forKey: .stsPresignedUrl)
        try container.encode(self.workflowActor, forKey: .workflowActor)
        try container.encode(self.expiresInSeconds, forKey: .expiresInSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case stsPresignedUrl = "sts_presigned_url"
        case workflowActor = "workflow_actor"
        case expiresInSeconds = "expires_in_seconds"
    }
}