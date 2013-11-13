FactoryGirl.define do
  factory :dpd1, class: Candidate do
    id 1
    lembaga "DPD"
    provinsi_id 11
    dapil_id nil
    partai_id nil
    calon_urutan 1
    calon_id "DPD1101"
    nama "ADNAN N.S"
    kelamin "L"
    tinggal "KOTA BANDA ACEH"
  end

  factory :dpd2, class: Candidate do
    id 2
    lembaga "DPD"
    provinsi_id 11
    dapil_id nil
    partai_id nil
    calon_urutan 2
    calon_id "DPD1102"
    nama "Dr. AHMAD FARHAN HAMID, M.S."
    kelamin "L"
    tinggal "KOTA BANDA ACEH"
  end
end