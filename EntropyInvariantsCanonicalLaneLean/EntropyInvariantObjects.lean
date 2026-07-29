import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : MeasureTheory.Measure carrier

structure EntropyAdmittedObject where
  space : EntropySpace
  dynamicalSystem : space.carrier → space.carrier
  invariantMeasure : Prop
  entropyFinite : Prop
  conclusion : entropyFinite

def EntropyWitnessClosed (O : EntropyAdmittedObject) : Prop :=
  O.entropyFinite

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse