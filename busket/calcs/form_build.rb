# aa = {
#     'id': ['id', ''],
#     'name': ['Назва', ''],
#     'description': ['Опис', ''],
#     'kof_markup': ['Коф націнки', ''],
#     'price_$': ['Ціна', ''],
#     'personal_data': {
#         'area': ['Площа покриття', ''],
#         'metal_thickness': ['Товщина металу  (мм)', ''],
#     },
#     'dimensions': {
#         'height': ['Висота', ''],
#         'length': ['Дожина, Вильот', ''],
#         'width': ['Ширина, Габарит', ''],
#         'diam': ['Діаметр', ''],
#         'weight': ['Вага', '']
#     },
#     'tags': ['Теги', []],
#     'photo': ['Фото', []],
#     'logo': ['Лого', []],
#     'links_drawing': ['Креслення', []],
#     'producer': ['Виробник, Постачальник', []],
#     'shipping_dimensions': {
#         'height': ['Висота', ''],
#         'width': ['Ширина', ''],
#         'length': ['Довжина', ''],
#         'packaging_type': ['Тип пакування', ''],
#         'unit': ['Одиниця виміру', '']
#     },
#     'location_warehouse': ['Місце знаходження на складі', ''],
#     'group_crm': ['Группа црм', ''],
#     'sten_on': ['Встановлюється на', ''],
#     'consists_of': ['складається з', ''],
#     'other_data': {

#     }
# }
aa = {
  'depiction': ['', ''],
  'id': ['id', ''],
  'name': ['Назва', ''],
  'description': ['Опис', ''],
  'kof_markup': ['Коф націнки', ''],
  'price_$': ['Ціна $', ''],
  'price_₴': ['Ціна ₴', ''],
  'personal_data': {
    'depiction': ['', ''],
    'area': ['Площа покриття', ''],
    'metal_thickness': ['Товщина металу  (мм)', ''],
  },
  'dimensions': {
    'depiction': ['', ''],
    'height': ['Висота', ''],
    'length': ['Дожина, Вильот', ''],
    'width': ['Ширина, Габарит', ''],
    'diam': ['Діаметр', ''],
    'weight': ['Вага', '']
  },
  'tags': ['Теги', []],
  'photo': ['Фото', []],
  'logo': ['Лого', []],
  'links_drawing': ['Креслення', []],
  'producer': ['Виробник, Постачальник', []],
  'shipping_dimensions': {
    'depiction': ['', ''],
    'height': ['Висота', ''],
    'width': ['Ширина', ''],
    'length': ['Довжина', ''],
    'packaging_type': ['Тип пакування', '']
  },
  'unit': ['Одиниця виміру', ''],
  'location_warehouse': ['Місце знаходження на складі', ''],
  'group_crm': ['Группа црм', ''],
  'sten_on': ['Встановлюється на', ''],
  'consists_of': ['складається з', ''],
  'other_data': {
    'depiction': ['', ''],
  }
}

def form_build(a)
  aanny(a)
end

def aanny(el)
  el.each do |key, value|
    if value.is_a?(Array) && key != 'depiction' && !value.is_a?(Hash) //problemm
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