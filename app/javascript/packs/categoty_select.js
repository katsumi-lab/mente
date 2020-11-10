$(document).on('turbolinks:load', function() {

  //復活させるダミーの部屋のセレクトボックス
    let defaultRoomCategorySelect = <div id="room_category"><div class="field"><div class="form-group"><label for="post_floor_category_id">部屋</label><select name="room_category", class="form-control">
    <option value>---</option>
    </select></div></div></div>;
  
   //復活させるダミーの項目のセレクトボックス
    let defaultItemCategorySelect = <div id="item_category"><div class="field"><div class="form-group"><label for="post_floor_category_id">項目</label><select name="room_category", class="form-control">
    <option value>---</option>
    </select></div></div></div>;
  
  //部屋の処理
   $(document).on('change', '#post_floor_category_id', function() {
    let categoryVal = $('#post_floor_category_id').val();
  
    //場所が変更されてvalueに値が入った場合の処理
    if (categoryVal !== "") {
     let selectedTemplate = $(`#room_category_${categoryVal}`); //呼び出すtamplateのidセット
  
     $('#room_category').remove(); //デフォルト表示用の部屋を削除
     $('#item_category').remove(); //デフォルト表示用の項目を削除
     $("#selected_room_category").remove(); //前に選択した部屋がある場合に削除
     $("#selected_item_category").remove();  //前に選択した項目がある場合に削除（これがないと、部屋、項目が選択された状態で、場所が変更された場合に小が残ってしまう。）
     $('#room_category_insert_point').after(selectedTemplate.html());　//場所に紐づいた部屋セレクトを追加
     $('#item_category_insert_point').after(defaultitemCategorySelect); //デフォルト表示の項目を追加
  
    }else {
  
     //親要素のセレクトボックスが変更されてvalueに値が入っていない場合（include_blankの部分を選択している場合）
     $("#selected_room_category").remove();//前に選択した部屋がある場合に削除
     $("#selected_item_category").remove(); //前に選択した項目がある場合に削除
     $('#room_category').remove();//デフォルト表示用の部屋を削除
     $('#item_category').remove(); //デフォルト表示用の項目を削除
     $('#room_category_insert_point').after(defaultroomCategorySelect); //デフォルト表示の部屋を追加
     $('#item_category_insert_point').after(defaultitemCategorySelect); //デフォルト表示の項目を追加
  
    };
   });
  
  //項目の処理
   $(document).on('change', '#post_room_category_id', function() {
    let categoryVal = $('#post_room_category_id').val();
    //親要素のセレクトボックスが変更されてvalueに値が入った場合の処理
    if (categoryVal !== "") {
     let selectedTemplate = $(`#item_category_${categoryVal}`);
     //デフォルトで入っていた子要素のセレクトボックスを削除
    $("#selected_item_category").remove();//前に選択した項目がある場合に削除
     $('#item_category').remove(); //デフォルト表示の項目を追加
     // $('#before_room_category_select_box').remove();
     $('#item_category_insert_point').after(selectedTemplate.html()); //部屋に紐づいた項目セレクトを追加
    }else {
    $('#item_category').remove();
     $("#selected_item_category").remove(); //前に選択した項目を削除
     $('#item_category_insert_point').after(defaultitemCategorySelect); //デフォルト表示の項目を追加
    };
   });
  
  }); //$(document).on('turbolinks:load', function()
  