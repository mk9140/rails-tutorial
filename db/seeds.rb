# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
category_majors = %w[本 コンピュータ ディスプレイ]
book_categories = %w[ビジネス 文学・評論 人文・思想 スポーツ コンピュータ・IT 資格・検定・就職 絵本・児童書 写真集 ゲーム攻略本 雑誌 アート・デザイン ノンフィクション]
computer_categories = %w[ノートPC デスクトップPC タブレット]
display_categories = %w[19~20インチ デスクトップPC タブレット]

category_majors.each { |major|
  if major == "本"
    book_categories.each { |book|
      Category.create(
        category_major: major,
        category_name: book,
        category_description: book
      )
    }
  elsif major == "コンピュータ"
    computer_categories.each { |computer|
      Category.create(
        category_major: major,
        category_name: computer,
        category_description: computer
      )
    }
  elsif major == "ディスプレイ"
    display_categories.each { |display|
      Category.create(
        category_major: major,
        category_name: display,
        category_description: display
      )
    }

  end
}