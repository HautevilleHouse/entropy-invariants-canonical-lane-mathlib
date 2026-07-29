import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyFunctional

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure ReducedVolumePackage {E : EntropyFunctionalPackage} where
  reducedVolumeFunctional : Type u
  monotonicity : Prop
  asymptotics : Prop
  comparisonGeometry : Prop
  liouvilleProperty : Prop

structure ReducedVolumeEvidence {E : EntropyFunctionalPackage}
    (R : ReducedVolumePackage E) where
  monotonicityClosed : R.monotonicity
  asymptoticsClosed : R.asymptotics
  comparisonGeometryClosed : R.comparisonGeometry
  liouvillePropertyClosed : R.liouvilleProperty

def ReducedVolumeClosed {E : EntropyFunctionalPackage}
    (R : ReducedVolumePackage E) : Prop :=
  R.monotonicity ∧ R.asymptotics ∧ R.comparisonGeometry ∧ R.liouvilleProperty

theorem reduced_volume_closed_from_evidence {E : EntropyFunctionalPackage}
    (R : ReducedVolumePackage E) (Ev : ReducedVolumeEvidence R) :
    ReducedVolumeClosed R := by
  exact And.intro Ev.monotonicityClosed
    (And.intro Ev.asymptoticsClosed
      (And.intro Ev.comparisonGeometryClosed Ev.liouvillePropertyClosed))

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse