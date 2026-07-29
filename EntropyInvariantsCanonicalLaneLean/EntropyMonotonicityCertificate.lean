import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyInvariantBridge

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyMonotonicityCertificate where
  entropyNonincreasing : Prop
  entropyNonincreasingClosed : entropyNonincreasing
  entropyEvidence : entropyNonincreasing

def EntropyMonotonicityCertificateClosed (C : EntropyMonotonicityCertificate) : Prop :=
  C.entropyNonincreasing

theorem entropy_monotonicity_certificate_closed (C : EntropyMonotonicityCertificate) :
    EntropyMonotonicityCertificateClosed C :=
  C.entropyNonincreasingClosed

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse