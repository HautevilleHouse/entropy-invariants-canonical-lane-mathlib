import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyInvariantObject where
  system : Type u
  entropy : system → ℝ
  invariantProperty : ∀ (τ : system → system), entropy ∘ τ = entropy

def EntropyInvariantClosed (O : EntropyInvariantObject) : Prop :=
  ∀ (τ : O.system → O.system), O.invariantProperty τ

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse