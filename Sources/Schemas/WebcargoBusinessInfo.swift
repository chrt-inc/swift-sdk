import Foundation

public struct WebcargoBusinessInfo: Codable, Hashable, Sendable {
    public let serviceMethod: String?
    public let methodReason: String?
    public let parties: [WebcargoParty]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        serviceMethod: String? = nil,
        methodReason: String? = nil,
        parties: [WebcargoParty]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.serviceMethod = serviceMethod
        self.methodReason = methodReason
        self.parties = parties
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.serviceMethod = try container.decodeIfPresent(String.self, forKey: .serviceMethod)
        self.methodReason = try container.decodeIfPresent(String.self, forKey: .methodReason)
        self.parties = try container.decodeIfPresent([WebcargoParty].self, forKey: .parties)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.serviceMethod, forKey: .serviceMethod)
        try container.encodeIfPresent(self.methodReason, forKey: .methodReason)
        try container.encodeIfPresent(self.parties, forKey: .parties)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case serviceMethod = "service_method"
        case methodReason = "method_reason"
        case parties
    }
}