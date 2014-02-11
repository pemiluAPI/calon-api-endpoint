FactoryGirl.define do
  factory :dapil_aceh1, class: ElectoralDistrict do
    id "1101-00-0000"
    nama "Aceh I"
    nama_lengkap "Aceh 1"
    id_provinsi 11
    nama_lembaga "DPRDI"
    jumlah_kursi 11
    jumlah_penduduk nil
  end

  factory :dapil_aceh2, class: ElectoralDistrict do
    id "1102-00-0000"
    nama "Aceh II"
    nama_lengkap "Aceh II"
    id_provinsi 11
    nama_lembaga "DPRDII"
    jumlah_kursi 7
    jumlah_penduduk nil
  end

  factory :dapil_jambi, class: ElectoralDistrict do
    id "1500-01-0000"
    nama "Jambi 1"
    nama_lengkap "Jambi 1"
    id_provinsi 15
    nama_lembaga "DPRDI"
    jumlah_kursi 10
    jumlah_penduduk nil
  end
end