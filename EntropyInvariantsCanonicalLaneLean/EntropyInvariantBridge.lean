import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyInvariantObjects

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EntropyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse