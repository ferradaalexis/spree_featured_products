FactoryGirl.modify do
  factory :base_product do
    trait :featured do
      featured true
    end
  end
end
