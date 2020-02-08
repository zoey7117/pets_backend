# if Rails.env === 'production'
#   Rails.application.config.session_store :cookie_store, key: '_adopt-a-pet', domain: 'your-frontend-domain'
# else
#   Rails.application.config.session_store :cookie_store, key: '_adopt-a-pet'
# end
Rails.application.config.session_store :cookie_store, key: '_adopt_a_pet_session', domain: 'https://adopt-a-pet.netlify.com'
