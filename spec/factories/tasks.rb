# La mention "Utiliser FactoryBot"
FactoryBot.define do
    # Nommez les données de test à créer "tâche"
    # 「task」のように存在するクラス名のスネークケースをテストデータ名とする場合、そのクラスのテストデータが作成されます
    factory :task do
      title { 'Préparation des documents' }
      content { 'Créer une proposition.' }
      created_at { '2025-02-18' }
    end
    # Nommez les données de test à créer "second_task"
    # 「second_task」のように存在しないクラス名のスネークケースをテストデータ名とする場合、`class`オプションを使ってどのクラスのテストデータを作成するかを明示する必要があります
    factory :second_task, class: Task do
      title { 'Manga' }
      content { 'Naruto' }
      created_at { '2025-02-17' }
    end

    factory :third_task, class: Task do
      title { 'Sport' }
      content { 'foot' }
      created_at { '2025-02-16' }
    end

end