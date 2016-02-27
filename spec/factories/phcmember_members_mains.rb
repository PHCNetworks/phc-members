FactoryGirl.define do
  factory :phcmember_members_main, class: 'Phcmember::Members::Main' do
    mfirstname "MyString"
    mlastname "MyString"
    mtitle "MyString"
    memail "MyString"
    mphone "MyString"
    mnotes "MyString"
    account_id 1
  end
end
