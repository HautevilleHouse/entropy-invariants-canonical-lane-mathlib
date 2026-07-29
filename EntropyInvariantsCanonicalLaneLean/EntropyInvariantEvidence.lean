import canonicalLaneMathlib.AdmissibleClass
import EntropyInvariantPackage

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyInvariantEvidence (P : EntropyInvariantPackage) where
  measureSystemsClosed : ∀ (obj : EntropyInvariantObject), obj ∈ P.measureSystems → EntropyInvariantClosed obj
  mixingClosed : P.mixingProperty
  ergodicityClosed : P.ergodicity

def EntropyInvariantPackageClosed (P : EntropyInvariantPackage) : Prop :=
  (∀ (obj : EntropyInvariantObject), obj ∈ P.measureSystems → EntropyInvariantClosed obj) ∧
  P.mixingProperty ∧
  P.ergodicity

theorem entropy_invariant_closed_from_evidence (P : EntropyInvariantPackage) (E : EntropyInvariantEvidence P) :
    EntropyInvariantPackageClosed P := by
  exact And.intro E.measureSystemsClosed (And.intro E.mixingClosed E.ergodicityClosed)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse