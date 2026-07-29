import canonicalLaneMathlib.AdmissibleClass
import EntropyInvariantClosure

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

def ConstrainedEntropyInvariantClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_entropy_invariant_endgame (A : AdmissibleClass) :
    ConstrainedEntropyInvariantClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse