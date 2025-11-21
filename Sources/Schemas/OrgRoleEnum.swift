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
/// Clerk requires the "org:" prefix when calling its API, but we store without it.
/// When sending to Clerk, prepend "org:" to the enum value.
public enum OrgRoleEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case owner
    case administrator
    case `operator`
    case driver
}