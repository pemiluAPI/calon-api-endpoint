FactoryGirl.define do
  factory :pkb, class: Party do
    id 2
    nama "Partai Kebangkitan Bangsa"
    singkatan "PKB"
    situs "http://www.dpp.pkb.or.id/"
  end

  factory :pan, class: Party do
    id 8
    nama "Partai Amanat Nasional"
    singkatan "PAN"
    situs "http://www.pan.or.id/"
  end
end