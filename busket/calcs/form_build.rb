# 'name': ['Назва', ''],
# 'description': ['Опис', ''],
# 'id': ['id', ''],
# 'tags': ['Теги', []],
# 'group_product': ['Группа продуктов', ''],
# 'sten_on': ['Встановлюється на', ''],
# 'consists_of': ['складається з', ''],
# 'kof_markup': ['Коф націнки', ''],
# 'price_₴': ['Ціна ₴', ''],
# 'price_$': ['Ціна $', ''],

# t.string "name"
# t.string "description"
# t.string "id_s"
# t.string "tags"
# t.string "group_product"
# t.string "sten_on"
# t.string "consists_of"
# t.string "price"
# t.text "data"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false


  aa = {
    'name': ['Назва', ''],
    'description': ['Опис', ''],
    'id_s': ['id_s', ''],
    'tags': ['Теги', []],
    'group_product': ['Группа продуктов', ''],
    'sten_on': ['Встановлюється на', ''],
    'consists_of': ['складається з', ''],
    'price_$': ['Ціна $', ''],
    'data': {  
      'personal_data': {
        'area': ['Площа покриття', ''],
        'metal_thickness': ['Товщина металу  (мм)', ''],
      },
      'dimensions': {
        'height': ['Висота', ''],
        'length': ['Дожина, Вильот', ''],
        'width': ['Ширина, Габарит', ''],
        'diam': ['Діаметр', ''],
        'weight': ['Вага', '']
      },
      'logo': ['Лого', []],
      'links_drawing': ['Креслення', []],
      'producer': ['Виробник, Постачальник', []],
      'shipping_dimensions': {
        'img': ['Картинеки', []],
        'height': ['Висота', ''],
        'width': ['Ширина', ''],
        'length': ['Довжина', ''],
        'packaging_type': ['Тип пакування', '']
      },
      'photo': ['Фото', []],
      'unit': ['Одиниця виміру', ''],
      'location_warehouse': ['Місце знаходження на складі', ''],
      'other_data': {
      }
    }  
  }



def form_build(a)
  aanny(a)
end

def aanny(el)
  el.each do |key, value|
    if value.is_a?(Array) && key != 'description' && !value.is_a?(Hash)
      if value[1].is_a?(Array)
        puts "input many elements: #{value[0]}"
      else
        puts "input one element: #{value[0]}"
      end
    elsif value.is_a?(Hash)
      aanny(value)
    end
  end
end

form_build(aa)
