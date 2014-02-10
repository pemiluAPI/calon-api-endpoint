FactoryGirl.define do
  factory :pkb, class: Party do
    id "2"
    nama "PKB"
    nama_lengkap "Partai Kebangkitan Bangsa"
    url_situs "http://www.dpp.pkb.or.id/"
    url_facebook "https://www.facebook.com/pages/DPP-PKB/167600963307010"
    url_twitter "https://twitter.com/PKB_News_Online"
  end

  factory :pan, class: Party do
    id "8"
    nama "PAN"
    nama_lengkap "Partai Amanat Nasional"
    url_situs "http://www.pan.or.id/"
    url_facebook "https://www.facebook.com/amanatnasional"
    url_twitter "https://twitter.com/official_PAN"
  end
end