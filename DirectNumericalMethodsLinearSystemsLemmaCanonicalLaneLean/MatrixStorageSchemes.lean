import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean

structure MatrixStorageScheme where
  storedEntries : Prop
  indexingScheme : Prop
  memoryLayout : Prop
  storageOverhead : Prop

structure MatrixStorageEvidence (M : MatrixStorageScheme) where
  storedEntriesClosed : M.storedEntries
  indexingSchemeClosed : M.indexingScheme
  memoryLayoutClosed : M.memoryLayout
  storageOverheadClosed : M.storageOverhead

def MatrixStorageClosed (M : MatrixStorageScheme) : Prop :=
  M.storedEntries ∧ M.indexingScheme ∧ M.memoryLayout ∧ M.storageOverhead

theorem matrix_storage_closed_from_evidence (M : MatrixStorageScheme) (E : MatrixStorageEvidence M) :
    MatrixStorageClosed M := by
  exact And.intro E.storedEntriesClosed
    (And.intro E.indexingSchemeClosed
      (And.intro E.memoryLayoutClosed E.storageOverheadClosed))

end DirectNumericalMethodsLinearSystemsLemmaCanonicalLaneLean
end HautevilleHouse