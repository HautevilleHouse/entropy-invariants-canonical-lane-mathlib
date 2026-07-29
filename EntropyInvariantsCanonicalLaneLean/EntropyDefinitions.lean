import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyAdmittedObject where
  systemType : Type u
  entropyFunctional : systemType → ℝ
  entropyProductionBounds : Prop
  entropyInvariantProperty : Prop
  conclusion : entropyInvariantProperty

def EntropyWitnessClosed (O : EntropyAdmittedObject) : Prop :=
  O.entropyInvariantProperty

structure EntropyFunctionalPackage where
  entropyDefinition : Prop
  monotonicityUnderFlow : Prop
  convexityProperties : Prop

def EntropyFunctionalClosed (P : EntropyFunctionalPackage) : Prop :=
  P.entropyDefinition ∧ P.monotonicityUnderFlow ∧ P.convexityProperties

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse
