import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyInvariantClosurePackage (F : EntropyFunctionalPackage)
    (M : EntropyMonotonicityPackage F) where
  invariantUnderDynamics : Prop
  LyapunovFunctionConstruction : Prop
  entropyConvergenceToEquilibrium : Prop

def EntropyInvariantClosureClosed {F : EntropyFunctionalPackage}
    {M : EntropyMonotonicityPackage F} (C : EntropyInvariantClosurePackage F M) : Prop :=
  C.invariantUnderDynamics ∧ C.LyapunovFunctionConstruction ∧ C.entropyConvergenceToEquilibrium

structure EntropyInvariantClosureEvidence {F : EntropyFunctionalPackage}
    {M : EntropyMonotonicityPackage F} (C : EntropyInvariantClosurePackage F M) where
  invariantUnderDynamicsClosed : C.invariantUnderDynamics
  LyapunovFunctionConstructionClosed : C.LyapunovFunctionConstruction
  entropyConvergenceToEquilibriumClosed : C.entropyConvergenceToEquilibrium

theorem entropy_invariant_closure_closed_from_evidence
    {F : EntropyFunctionalPackage} {M : EntropyMonotonicityPackage F}
    (C : EntropyInvariantClosurePackage F M)
    (E : EntropyInvariantClosureEvidence C) : EntropyInvariantClosureClosed C := by
  exact And.intro E.invariantUnderDynamicsClosed
    (And.intro E.LyapunovFunctionConstructionClosed E.entropyConvergenceToEquilibriumClosed)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse
