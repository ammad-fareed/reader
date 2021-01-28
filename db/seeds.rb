##### Create Admin User for the App itself (Devise) #####
user = User.new(
  email: 'admin@quickrails.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'Quickrails',
  last_name: 'Admin',
  full_name: 'Quickrails',
  username: 'quickrails',
)
#user.skip_confirmation!
user.save!

# Folders
folder1 = Folder.create(
  name: 'Research',
  parent_id: nil,
  user_id: 1
)
folder2 = Folder.create(
  name: 'Life',
  parent_id: nil,
  user_id: 1
)
folder3 = Folder.create(
  name: 'News',
  parent_id: nil,
  user_id: 1
)
folder4 = Folder.create(
  name: 'Study',
  parent_id: nil,
  user_id: 1
)
folder5 = Folder.create(
  name: 'Introduction',
  parent_id: folder1.id,
  user_id: 1
)
folder6 = Folder.create(
  name: 'Conclusion',
  parent_id: folder1.id,
  user_id: 1
)

# Articles
article1 = Article.create(
  user_id: 1,
  folder_id: folder1.id,
  source: 'https://www.hitc.com/en-gb/2020/11/18/is-snapchat-deleting-memories/',
  title: 'Is Snapchat deleting memories? Rumour spreads on Twitter! – HITC',
  description: 'A rumour has been spreading around social media that Snapchat is getting rid of its memories feature. Is it actually true?',
  thumbnail_url: 'https://www.hitc.com/favicon-hotlist.png',
  favicon_url: 'https://www.hitc.com/favicon-hotlist.png'
)
article2 = Article.create(
  user_id: 1,
  folder_id: folder1.id,
  source: 'https://www.simicart.com/blog/pwa-app-stores/',
  title: 'Luke Vu A content writer with a passion for the English language.',
  description: 'A review of the current state of PWAs in major app stores AND How to publish them to Google Play Store, Apple App Store & Microsoft Store.',
  thumbnail_url: 'https://www.simicart.com/skin/frontend/default/simicart2.0/css/2017/images/icon-logo.png',
  favicon_url: 'https://www.simicart.com/skin/frontend/default/simicart2.0/css/2017/images/icon-logo.png'
)
article3 = Article.create(
  user_id: 1,
  folder_id: folder1.id,
  source: 'https://vaadin.com/learn/tutorials/app-store-pwa/apple-app-store',
  title: 'Submitting a PWA to Apple App Store using PWA Builder',
  description: 'This tutorial shows how you build and submit your progressive web application (PWA) to the Apple App Store.',
  thumbnail_url: 'https://vaadin.com/favicon-16x16.png',
  favicon_url: 'https://vaadin.com/favicon-16x16.png'
)
article4 = Article.create(
  user_id: 1,
  folder_id: folder2.id,
  source: 'https://www.bbc.co.uk/news/business-54474490',
  title: 'UK economic growth slows despite restaurant boost',
  description: 'The UK economy continued its recovery in August, growing by 2.1%, as the Eat Out to Help Out scheme boosted restaurants.',
  thumbnail_url: 'https://www.favicon.cc/logo3d/834207.png',
  favicon_url: 'https://www.favicon.cc/logo3d/834207.png'
)
article5 = Article.create(
  user_id: 1,
  folder_id: folder2.id,
  source: 'https://hbr.org/2014/02/how-to-make-yourself-work-when-you-just-dont-want-to',
  title: 'How to Make Yourself Work When You Just Don’t Want To',
  description: 'Get over your “feelings” and take care of business.',
  thumbnail_url: 'https://hbr.org/resources/images/favicon.ico',
  favicon_url: 'https://hbr.org/resources/images/favicon.ico'
)


