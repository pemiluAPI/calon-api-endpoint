FactoryGirl.define do
    factory :riwayat_krj1, class: RiwayatPekerjaanDpr do
    id 1
    id_calon "1100-00-0000-0001"
    ringkasan "1998-1998, FKP DPR RI, ANGGOTA TIM AHLI, JAKARTA"
  end

  factory :riwayat_krj2, class: RiwayatPekerjaanDpr do
    id 2
    id_calon "1100-00-0000-0001"
    ringkasan "1998-1998, MPR RI, TIM AHLI, JAKARTA"
  end

  factory :riwayat_krj3, class: RiwayatPekerjaanDpr do
    id 3
    id_calon "1100-00-0000-0002"
    ringkasan "2000-2005, TIM PENASEHAT PRESIDEN URUSAN ACEH ANGGOTA, JAKARTA"
  end
end