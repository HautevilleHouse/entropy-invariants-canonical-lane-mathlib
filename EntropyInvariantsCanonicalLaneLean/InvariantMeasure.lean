import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyFunctional

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure InvariantMeasurePackage (E : EntropyFunctionalPackage) where
  measure : Type u
  sigmaAlgebra : Type v
  measurePreserving : Prop
  ergodicity : Prop

def InvariantMeasureClosed {E : EntropyFunctionalPackage} (M : InvariantMeasurePackage E) : Prop :=
  M.measurePreserving ∧ M.ergodicity

structure InvariantMeasureEvidence {E : EntropyFunctionalPackage} (M : InvariantMeasurePackage E) where
  measurePreservingClosed : M.measurePreserving
  ergodicityClosed : M.ergodicity

theorem invariant_measure_closed_from_evidence {E : EntropyFunctionalPackage}
    (M : InvariantMeasurePackage E) (ev : InvariantMeasureEvidence M) :
    InvariantMeasureClosed M := by
  exact And.intro ev.measurePreservingClosed ev.ergodicityClosed

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse