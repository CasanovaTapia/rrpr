Category.destroy_all
Category.create!(title: 'media')
Category.create!(title: 'dev')
categories = Category.all

Entry.destroy_all
10.times do
  entry = Entry.create!(
    title:        Faker::Company.name,
    tagline:      Faker::Commerce.product_name,
    body:         Faker::Lorem.paragraph(20, true, 4),
    category_id:  categories.sample.id
  )
end
