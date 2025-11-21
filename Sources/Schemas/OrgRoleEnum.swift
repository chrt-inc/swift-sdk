import Foundation

/// Organization roles used by Clerk in `jwt.o.rol` field
/// 
/// Hierarchy (highest to lowest):
///     owner > administrator > operator > driver
/// 
/// Role availability by org type:
///     {owner, administrator, operator}  → COURIER | SHIPPER | FORWARDER
///     {driver}                          → COURIER only
/// 
/// Note: Hierarchical enforcement depends on utils_oort_authz helper functions.
/// 
/// Clerk dashboard with roles settings:
/// - prod: https://dashboard.clerk.com/apps/app_2rDeFYQ7SBioYoMhG38FgirTE4Q/instances/ins_2rDmMgzRGFXd6Ml6N8eV8pOXeyI/organizations-settings/roles
/// - dev: https://dashboard.clerk.com/apps/app_2rDeFYQ7SBioYoMhG38FgirTE4Q/instances/ins_2rDeFZFEZ3nIC9VQt3zYfvzL14Z/organizations-settings/roles
/// 
/// Clerk includes the "org:" prefix automatically, so we use it in the enum.
public enum OrgRoleEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case orgOwner = "org:owner"
    case orgAdministrator = "org:administrator"
    case orgOperator = "org:operator"
    case orgDriver = "org:driver"
}