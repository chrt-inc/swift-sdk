import Foundation

public enum SourcesItem: Codable, Hashable, Sendable {
    case chrtManagedRole(AuthzUserPermissionManagedRoleSourceRes)
    case customRole(AuthzUserPermissionCustomRoleSourceRes)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .kind)
        switch discriminant {
        case "chrt_managed_role":
            self = .chrtManagedRole(try AuthzUserPermissionManagedRoleSourceRes(from: decoder))
        case "custom_role":
            self = .customRole(try AuthzUserPermissionCustomRoleSourceRes(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unknown shape discriminant value: \(discriminant)"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .chrtManagedRole(let data):
            try container.encode("chrt_managed_role", forKey: .kind)
            try data.encode(to: encoder)
        case .customRole(let data):
            try container.encode("custom_role", forKey: .kind)
            try data.encode(to: encoder)
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
    }
}