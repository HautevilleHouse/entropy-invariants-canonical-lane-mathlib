import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure AdmissibleClass where
  object : EntropyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EntropyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse