FactoryGirl.define do
    factory :riwayat_pend1, class: RiwayatPendidikanDpr do
    id 1
    id_calon "1100-00-0000-0001"
    ringkasan "1957-1963, SD, SEKOLAH RAKYAT NEGERI, ACEH"
  end

  factory :riwayat_pend2, class: RiwayatPendidikanDpr do
    id 2
    id_calon "1100-00-0000-0001"
    ringkasan "1963-1966, SLTP, SMP NEGERI 1, BANDA ACEH"
  end

  factory :riwayat_pend3, class: RiwayatPendidikanDpr do
    id 3
    id_calon "1100-00-0000-0002"
    ringkasan "1963-1966 SLTP I NEGERI 1 BANDA ACEH"
  end
end