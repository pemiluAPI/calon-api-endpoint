FactoryGirl.define do
  factory :dapil_aceh1, class: ElectoralDistrict do
    id "1101-00-0000"
    nama "Aceh I"
    id_provinsi 11
  end

  factory :dapil_aceh2, class: ElectoralDistrict do
    id "1102-00-0000"
    nama "Aceh II"
    id_provinsi 11
  end

  factory :dapil_jambi, class: ElectoralDistrict do
    id "1501-00-0000"
    nama "Jambi"
    id_provinsi 15
  end
end