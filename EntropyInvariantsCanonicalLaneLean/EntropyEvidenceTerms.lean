import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyMonotonicityCertificate

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure EntropyEvidenceTerms (C : EntropyMonotonicityCertificate) where
  entropyNonincreasing : C.entropyNonincreasing
  entropyClosed : EntropyMonotonicityCertificateClosed C

def EntropyMonotonicityCertificate.evidenceTerms (C : EntropyMonotonicityCertificate) : EntropyEvidenceTerms C :=
  { entropyNonincreasing := C.entropyNonincreasingClosed
    entropyClosed := entropy_monotonicity_certificate_closed C }

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse