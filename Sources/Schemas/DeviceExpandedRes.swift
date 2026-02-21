import Foundation

public struct DeviceExpandedRes: Codable, Hashable, Sendable {
    public let device: DeviceLimitedForList1
    public let activeSession: Session1?
    public let activeCargo: Cargo1?
    public let pastSessions: [Session1]?
    public let pastCargos: [Cargo1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        device: DeviceLimitedForList1,
        activeSession: Session1? = nil,
        activeCargo: Cargo1? = nil,
        pastSessions: [Session1]? = nil,
        pastCargos: [Cargo1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.device = device
        self.activeSession = activeSession
        self.activeCargo = activeCargo
        self.pastSessions = pastSessions
        self.pastCargos = pastCargos
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.device = try container.decode(DeviceLimitedForList1.self, forKey: .device)
        self.activeSession = try container.decodeIfPresent(Session1.self, forKey: .activeSession)
        self.activeCargo = try container.decodeIfPresent(Cargo1.self, forKey: .activeCargo)
        self.pastSessions = try container.decodeIfPresent([Session1].self, forKey: .pastSessions)
        self.pastCargos = try container.decodeIfPresent([Cargo1].self, forKey: .pastCargos)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.device, forKey: .device)
        try container.encodeIfPresent(self.activeSession, forKey: .activeSession)
        try container.encodeIfPresent(self.activeCargo, forKey: .activeCargo)
        try container.encodeIfPresent(self.pastSessions, forKey: .pastSessions)
        try container.encodeIfPresent(self.pastCargos, forKey: .pastCargos)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case device
        case activeSession = "active_session"
        case activeCargo = "active_cargo"
        case pastSessions = "past_sessions"
        case pastCargos = "past_cargos"
    }
}