import canonicalLaneMathlib.AdmissibleClass
import EntropyInvariantDefinitions

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyInvariantPackage where
  measureSystems : List EntropyInvariantObject
  entropyIsInvariant : ∀ (obj : EntropyInvariantObject), obj ∈ measureSystems → EntropyInvariantClosed obj
  mixingProperty : Prop
  ergodicity : Prop

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse