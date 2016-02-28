FactoryGirl.define do
  factory :phcmembers_members_contact, class: 'Phcmembers::Members::Contact' do
    mccontactname "MyString"
    mccompanyname "MyString"
    mcaddressl1 "MyString"
    mcaddressl2 "MyString"
    mccity "MyString"
    mlprovince "MyString"
    mccountry "MyString"
    mcpostalcode "MyString"
    mcphone "MyString"
    mlwebsite "MyString"
    mlemail "MyString"
    main nil
    account_id 1
  end
end
