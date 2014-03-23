User.create!([
  {email: "ilkka.hakkarainen@cs.helsinki.fi", encrypted_password: "$2a$10$RfM4JlZPx9doebGi2DC9JeFfgchGy8oojGqYbGx8K14/kNT2NRHya", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-23 06:39:13", last_sign_in_at: "2014-03-21 12:37:53", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
InformationCone.create!([
  {title: "Beatles", description: "Kaikki Beatlesista"},
  {title: "Metallitotuus", description: "Suomen metalliskenen keidas"}
])
Post.create!([
  {title: "Beatles-kotisivu", description: "Hyvä paikka oppia lisää Beatlesista", url: "http://www.thebeatles.com/", user_id: 1, information_cone_id: 1}
])
