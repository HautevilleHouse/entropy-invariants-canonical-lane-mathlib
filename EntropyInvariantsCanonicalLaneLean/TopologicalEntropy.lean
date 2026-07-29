import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure TopologicalEntropyPackage where
  dynamicalSystem : Type u
  openCover : Type v
  entropyValue : Prop
  invariantUnderConjugacy : Prop
  nonnegativity : Prop
  powerProperty : Prop

default instance : Inhabited TopologicalEntropyPackage := ⟨{
  dynamicalSystem := Unit,
  openCover := Unit,
  entropyValue := True,
  invariantUnderConjugacy := True,
  nonnegativity := True,
  powerProperty := True
}⟩

structure TopologicalEntropyEvidence (P : TopologicalEntropyPackage) where
  entropyValueClosed : P.entropyValue
  invariantUnderConjugacyClosed : P.invariantUnderConjugacy
  nonnegativityClosed : P.nonnegativity
  powerPropertyClosed : P.powerProperty

def TopologicalEntropyClosed (P : TopologicalEntropyPackage) : Prop :=
  P.entropyValue ∧ P.invariantUnderConjugacy ∧ P.nonnegativity ∧ P.powerProperty

theorem topological_entropy_closed_from_evidence (P : TopologicalEntropyPackage)
    (E : TopologicalEntropyEvidence P) : TopologicalEntropyClosed P := by
  exact And.intro E.entropyValueClosed
    (And.intro E.invariantUnderConjugacyClosed
      (And.intro E.nonnegativityClosed E.powerPropertyClosed))

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse