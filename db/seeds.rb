# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: "ブログアプリ開発について", category: "キャンプ" , body: "ポイントは調べる力。どれだけ調べることができるか")

Post.create(title: "今日の夕食", category: "日常生活" , body: "スーパーで弁当を買ってきて、それを食べた!")
