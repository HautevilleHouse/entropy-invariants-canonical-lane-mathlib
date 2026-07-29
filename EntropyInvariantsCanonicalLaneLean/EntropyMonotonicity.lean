import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyMonotonicityPackage (F : EntropyFunctionalPackage) where
  flowInvariance : Prop
  dissipationEstimate : Prop
  strictMonotonicityAtEquilibrium : Prop

def EntropyMonotonicityClosed {F : EntropyFunctionalPackage} (M : EntropyMonotonicityPackage F) : Prop :=
  M.flowInvariance ∧ M.dissipationEstimate ∧ M.strictMonotonicityAtEquilibrium

structure EntropyMonotonicityEvidence {F : EntropyFunctionalPackage} (M : EntropyMonotonicityPackage F) where
  flowInvarianceClosed : M.flowInvariance
  dissipationEstimateClosed : M.dissipationEstimate
  strictMonotonicityAtEquilibriumClosed : M.strictMonotonicityAtEquilibrium

theorem entropy_monotonicity_closed_from_evidence
    {F : EntropyFunctionalPackage} (M : EntropyMonotonicityPackage F)
    (E : EntropyMonotonicityEvidence M) : EntropyMonotonicityClosed M := by
  exact And.intro E.flowInvarianceClosed
    (And.intro E.dissipationEstimateClosed E.strictMonotonicityAtEquilibriumClosed)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse
