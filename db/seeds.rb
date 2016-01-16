Category.delete_all
Category.create!(title: 'media')
Category.create!(title: 'dev')
categories = Category.all

Entry.delete_all
10.times do
  entry = Entry.create!(
    title:        Faker::Company.name,
    tagline:      Faker::Commerce.product_name,
    body:         Faker::Lorem.paragraph(10, true, 4),
    category_id:  categories.sample.id
  )
end
