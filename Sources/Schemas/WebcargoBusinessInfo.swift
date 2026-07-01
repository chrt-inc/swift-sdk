import Foundation

public struct WebcargoBusinessInfo: Codable, Hashable, Sendable {
    public let methodReason: String?
    public let parties: [WebcargoParty]?
    public let serviceMethod: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        methodReason: String? = nil,
        parties: [WebcargoParty]? = nil,
        serviceMethod: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.methodReason = methodReason
        self.parties = parties
        self.serviceMethod = serviceMethod
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.methodReason = try container.decodeIfPresent(String.self, forKey: .methodReason)
        self.parties = try container.decodeIfPresent([WebcargoParty].self, forKey: .parties)
        self.serviceMethod = try container.decodeIfPresent(String.self, forKey: .serviceMethod)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.methodReason, forKey: .methodReason)
        try container.encodeIfPresent(self.parties, forKey: .parties)
        try container.encodeIfPresent(self.serviceMethod, forKey: .serviceMethod)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case methodReason = "method_reason"
        case parties
        case serviceMethod = "service_method"
    }
}