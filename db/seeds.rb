# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	email: 'test1@test1.com',
	password: 'password1',
	name: '魚太郎1'
	)

User.create!(
	email: 'fish2@fish2.com',
	password: 'password2',
	name: '魚太郎2'
	)

User.create!(
	email: 'fish3@fish3.com',
	password: 'password3',
	name: '魚太郎3'
	)

User.create!(
	email: 'fish4@fish4.com',
	password: 'password4',
	name: '魚太郎4'
	)

User.create!(
	email: 'fish5@fish5.com',
	password: 'password5',
	name: '魚太郎5'
	)

Fish.create!(
	fishing_title: 'test6',
	fish_name: 'sakana6',
	fishing_contents: 'sakana_content6',
	fishing_date: '20200116',
	fish_size: '60',
	fish_weight: '66',
	prefectures: '13',
	user_id: '1'
	)

Fish.create!(
	fishing_title: 'test2',
	fish_name: 'sakana2',
	fishing_contents: 'sakana_content2',
	fishing_date: '20200112',
	fish_size: '22',
	fish_weight: '20',
	prefectures: '2',
	user_id: '2'
	)

Fish.create!(
	fishing_title: 'test3',
	fish_name: 'sakana3',
	fishing_contents: 'sakana_content3',
	fishing_date: '20200113',
	fish_size: '33',
	fish_weight: '30',
	prefectures: '3',
	user_id: '3'
	)

Fish.create!(
	fishing_title: 'test4',
	fish_name: 'sakana4',
	fishing_contents: 'sakana_content4',
	fishing_date: '20200114',
	fish_size: '44',
	fish_weight: '40',
	prefectures: '4',
	user_id: '4'
	)

Fish.create!(
	fishing_title: 'test5',
	fish_name: 'sakana5',
	fishing_contents: 'sakana_content5',
	fishing_date: '20200115',
	fish_size: '55',
	fish_weight: '50',
	prefectures: '5',
	user_id: '5'
	)

FishComment.create!(
	comment: 'コメント1'
	)

FishComment.create!(
	comment: 'コメント2'
	)

FishComment.create!(
	comment: 'コメント3'
	)

FishComment.create!(
	comment: 'コメント4'
	)

FishComment.create!(
	comment: 'コメント5'
	)