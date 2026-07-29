import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EntropyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse