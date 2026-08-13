import Foundation

public struct InternalDelegationJwtReq: Codable, Hashable, Sendable {
    public let expiresInSeconds: Int
    public let stsPresignedUrl: String
    public let workflowCaller: WorkflowCaller
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expiresInSeconds: Int,
        stsPresignedUrl: String,
        workflowCaller: WorkflowCaller,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expiresInSeconds = expiresInSeconds
        self.stsPresignedUrl = stsPresignedUrl
        self.workflowCaller = workflowCaller
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expiresInSeconds = try container.decode(Int.self, forKey: .expiresInSeconds)
        self.stsPresignedUrl = try container.decode(String.self, forKey: .stsPresignedUrl)
        self.workflowCaller = try container.decode(WorkflowCaller.self, forKey: .workflowCaller)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.expiresInSeconds, forKey: .expiresInSeconds)
        try container.encode(self.stsPresignedUrl, forKey: .stsPresignedUrl)
        try container.encode(self.workflowCaller, forKey: .workflowCaller)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expiresInSeconds = "expires_in_seconds"
        case stsPresignedUrl = "sts_presigned_url"
        case workflowCaller = "workflow_caller"
    }
}