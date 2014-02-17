FactoryGirl.define do
  factory :dpd1, class: Candidate do
    id "1100-00-0000-0001"
    lembaga "DPD"
    id_provinsi 11
    id_dapil nil
    id_partai nil
    urutan 1
    nama "ADNAN N.S"
    jenis_kelamin "L"
    agama "KRISTEN PROTESTAN"
    tempat_lahir nil
    tanggal_lahir nil    
    foto_url "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/01.jpg"
    tahun 2014
    status_perkawinan nil
    nama_pasangan nil
    jumlah_anak nil
    kelurahan_tinggal nil
    kecamatan_tinggal nil
    kab_kota_tinggal "KOTA BANDA ACEH"
    provinsi_tinggal nil
  end

  factory :dpd2, class: Candidate do
    id "1100-00-0000-0002"
    lembaga "DPD"
    id_provinsi 11
    id_dapil nil
    id_partai nil
    urutan 2
    nama "Dr. AHMAD FARHAN HAMID, M.S."
    jenis_kelamin "L"
    agama "KRISTEN PROTESTAN"
    tempat_lahir nil
    tanggal_lahir nil    
    foto_url "http://dct.kpu.go.id/images/foto/DPD/11.%20NAD/02.jpg"
    tahun 2014
    status_perkawinan nil
    nama_pasangan nil
    jumlah_anak nil
    kelurahan_tinggal nil
    kecamatan_tinggal nil
    kab_kota_tinggal "KOTA BANDA ACEH"
    provinsi_tinggal nil
  end
end