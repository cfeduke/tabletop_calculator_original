Factory.define :army do |f|
  f.sequence(:name) { |n| "Army #{n}" }
  f.sequence(:description) { |n| "Description of army #{n}." }
  f.point_total 1000
end