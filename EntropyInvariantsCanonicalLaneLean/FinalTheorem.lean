import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyFunctional
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.MonotonicityFormula
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.ConvexityEntropy
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.ReducedVolume
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.WFunctional

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

def ConstrainedEntropyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_entropy_endgame (A : AdmissibleClass) :
    ConstrainedEntropyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse