// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$(document).ready(function(){
  $(this).tgHierSelectV2({
      group: 'group1',
      maxLevel: '5',
      defaultSelect: '----- 選択してください -----',
  });
});

(function($){
$.fn.tgHierSelectV2 = function(options){

    var opts = $.extend({}, $.fn.tgHierSelectV2.defaults, options);
    var cnt;
    var arr = [];

    $('html').find('select.'+opts.group).each( function(){

        // nameのレベル番号取得
        var lvTxt = parseInt($(this).attr('id').replace(/lv/, ""));

        // プルダウンのoption内容をコピー
        arr[lvTxt] = $('#lv'+lvTxt+' option').clone();

        // プルダウン選択時処理
        $('#'+this.id).change( function(){

            // プルダウン選択値
            var pdVal = $(this).val();

            // レベル文字を取得し数値化
            var currentLvNum = parseInt($(this).attr('id').replace(/lv/, ""));
            var nextLevelNum = currentLvNum+1;

      // プルダウン操作
      $('#lv'+nextLevelNum).removeAttr("disabled");              // 子プルダウンの"disabled"解除
      $('#lv'+nextLevelNum+" option").remove();                 // 一旦、子プルダウンのoptionを削除
      $(arr[currentLvNum+1]).appendTo('#lv'+nextLevelNum); // (コピーしていた)元の子プルダウンを表示
      $('#lv'+nextLevelNum+" option[class != p"+pdVal+"]").remove();  // 選択値以外のクラスのoptionを削除

            // デフォルトのoptionを先頭に表示
            for(cnt=nextLevelNum; cnt<=opts.maxLevel; cnt++){
              $('#lv'+cnt).prepend('<option value="0" selected="selected">'+opts.defaultSelect+'</option>');
            }
            // 変更したプルダウン以下の子プルダウンを全てdisabledに
            if((nextLevelNum+1) <= opts.maxLevel){
                for(i=nextLevelNum+1; i<=opts.maxLevel; i++){
                    $('#lv'+i).attr("disabled", "disabled");
                }
            }
        });
    });
}
})(jQuery);