import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyFunctionalPackage where
  entropyFunctional : Type u
  reducedVolume : Type v
  wFunctional : Type w
  muFunctional : Type x
  functionalDefined : Prop
  scaleInvariant : Prop
  wellDefinedOnManifold : Prop

structure EntropyFunctionalEvidence (E : EntropyFunctionalPackage) where
  functionalDefinedClosed : E.functionalDefined
  scaleInvariantClosed : E.scaleInvariant
  wellDefinedOnManifoldClosed : E.wellDefinedOnManifold

def EntropyFunctionalClosed (E : EntropyFunctionalPackage) : Prop :=
  E.functionalDefined ∧ E.scaleInvariant ∧ E.wellDefinedOnManifold

theorem entropy_functional_closed_from_evidence (E : EntropyFunctionalPackage)
    (Ev : EntropyFunctionalEvidence E) : EntropyFunctionalClosed E := by
  exact And.intro Ev.functionalDefinedClosed (And.intro Ev.scaleInvariantClosed Ev.wellDefinedOnManifoldClosed)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse