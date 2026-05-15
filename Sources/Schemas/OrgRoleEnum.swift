import Foundation

/// Organization roles used in authenticated caller claims.
/// 
/// Hierarchy (highest to lowest):
///     owner > admin > operator > member
/// 
/// Role availability by org type:
///     {owner, admin, operator, member}  → PROVIDER | SHIPPER
/// 
/// Note: Hierarchical enforcement depends on utils_shipping_authz helper functions.
/// 
/// WorkOS role slugs match these enum values.
public enum OrgRoleEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case owner
    case admin
    case `operator`
    case member
}