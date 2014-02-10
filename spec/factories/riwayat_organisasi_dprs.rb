FactoryGirl.define do
  factory :riwayat_org1, class: RiwayatOrganisasiDpr do
    id 1
    id_calon "1100-00-0000-0001"
    ringkasan "2013-SEKARANG, PARTAI NASDEM, KETUA DEWAN PAKAR DPP PARTAI NASDEM, JAKARTA"
  end

  factory :riwayat_org2, class: RiwayatOrganisasiDpr do
    id 2
    id_calon "1100-00-0000-0001"
    ringkasan "1998-1998, MPR RI, TIM AHLI, JAKARTA"
  end

  factory :riwayat_org3, class: RiwayatOrganisasiDpr do
    id 3
    id_calon "1100-00-0000-0002"
    ringkasan "2000-2005, TIM PENASEHAT PRESIDEN URUSAN ACEH ANGGOTA, JAKARTA"
  end
end