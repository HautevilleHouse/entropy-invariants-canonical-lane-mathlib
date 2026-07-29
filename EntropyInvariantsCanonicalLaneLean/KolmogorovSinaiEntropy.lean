import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.InvariantMeasure

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure KolmogorovSinaiEntropyPackage {E : EntropyFunctionalPackage}
    (M : InvariantMeasurePackage E) where
  entropy : Type u
  limitDefinition : Prop
  partitionIndependence : Prop

def KolmogorovSinaiEntropyClosed {E : EntropyFunctionalPackage}
    {M : InvariantMeasurePackage E} (K : KolmogorovSinaiEntropyPackage M) : Prop :=
  K.limitDefinition ∧ K.partitionIndependence

structure KolmogorovSinaiEntropyEvidence {E : EntropyFunctionalPackage}
    {M : InvariantMeasurePackage E} (K : KolmogorovSinaiEntropyPackage M) where
  limitDefinitionClosed : K.limitDefinition
  partitionIndependenceClosed : K.partitionIndependence

theorem kolmogorov_sinai_entropy_closed_from_evidence {E : EntropyFunctionalPackage}
    {M : InvariantMeasurePackage E} (K : KolmogorovSinaiEntropyPackage M)
    (ev : KolmogorovSinaiEntropyEvidence K) : KolmogorovSinaiEntropyClosed K := by
  exact And.intro ev.limitDefinitionClosed ev.partitionIndependenceClosed

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse