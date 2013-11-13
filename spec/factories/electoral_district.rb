FactoryGirl.define do
  factory :dapil_aceh1, class: ElectoralDistrict do
    id 1101
    nama "Aceh I"
    provinsi_id 11
  end

  factory :dapil_aceh2, class: ElectoralDistrict do
    id 1102
    nama "Aceh II"
    provinsi_id 11
  end

  factory :dapil_jambi, class: ElectoralDistrict do
    id 1501
    nama "Jambi"
    provinsi_id 15
  end
end