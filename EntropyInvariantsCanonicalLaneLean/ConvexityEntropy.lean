import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyFunctional

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure ConvexityEntropyPackage {E : EntropyFunctionalPackage} where
  convexityProperty : Prop
  hessianEstimates : Prop
  displacementConvexity : Prop
  kConvexity : Prop
  optimalTransport : Prop

structure ConvexityEntropyEvidence {E : EntropyFunctionalPackage}
    (C : ConvexityEntropyPackage E) where
  convexityPropertyClosed : C.convexityProperty
  hessianEstimatesClosed : C.hessianEstimates
  displacementConvexityClosed : C.displacementConvexity
  kConvexityClosed : C.kConvexity
  optimalTransportClosed : C.optimalTransport

def ConvexityEntropyClosed {E : EntropyFunctionalPackage}
    (C : ConvexityEntropyPackage E) : Prop :=
  C.convexityProperty ∧ C.hessianEstimates ∧ C.displacementConvexity ∧
  C.kConvexity ∧ C.optimalTransport

theorem convexity_entropy_closed_from_evidence {E : EntropyFunctionalPackage}
    (C : ConvexityEntropyPackage E) (Ev : ConvexityEntropyEvidence C) :
    ConvexityEntropyClosed C := by
  exact And.intro Ev.convexityPropertyClosed
    (And.intro Ev.hessianEstimatesClosed
      (And.intro Ev.displacementConvexityClosed
        (And.intro Ev.kConvexityClosed Ev.optimalTransportClosed)))

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse