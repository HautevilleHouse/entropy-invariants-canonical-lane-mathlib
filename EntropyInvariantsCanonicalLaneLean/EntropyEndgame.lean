import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EntropyAdmittedObject where
  space : Type u
  entropyValue : Prop
  conclusion : entropyValue

def EntropyWitnessClosed (O : EntropyAdmittedObject) : Prop :=
  O.entropyValue

structure AdmissibleClass where
  object : EntropyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EntropyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedEntropyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_entropy_endgame (A : AdmissibleClass) : ConstrainedEntropyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse