// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

$(document).on('turbolinks:load', function(){
    $(document).ready(function () {
      $("#theTarget").skippr({
        // スライドショーの変化 ("fade" or "slide")
        transition : 'fade',
        // 変化に係る時間(ミリ秒)
        speed : 1000,
        // easingの種類
        easing : 'easeOutQuart',
        // ナビゲーションの形("block" or "bubble")
        navType : 'bubble',
        // 子要素の種類("div" or "img")
        childrenElementType : 'div',
        // ナビゲーション矢印の表示(trueで表示)
        arrows : true,
        // スライドショーの自動再生(falseで自動再生なし)
        autoPlay : true,
        // 自動再生時のスライド切替間隔(ミリ秒)
        autoPlayDuration : 3000,
        // キーボードの矢印キーによるスライド送りの設定(trueで有効)
        keyboardOnAlways : false,
        // 一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
        hidePrevious : false
      });
    });
});

// コメント表示/非表示機能
//↓(jQuery)初回読み込み時、リロードどちらでも発火させる
$(document).on('turbolinks:load', function(){
  $(function(){
        $('#acMenu').toggle();
            $("#button1").click(function(){
              if ($(this).text() === 'コメント欄を閉じる') {
                $(this).text('コメントする');
                  } else {
                $(this).text('コメント欄を閉じる');
                  }
                $("#acMenu").toggle();
        });
    });
});

$(document).on('turbolinks:load', function(){
  $(function(){
    $('#ACmenu').toggle();
      $("#post-button").click(function(){
        $("#ACmenu").toggle();
    });
  });
});
// ここまで

// フラッシュメッセージのフェードアウト
$(function(){
  setTimeout("$('.flash-massege').fadeOut('slow')", 3000);
});
// ここまで

//　戻るボタンjs
$(document).on('turbolinks:load', function(){
    $(function(){
      var pagetop = $('#back a');
      // ボタン非表示
      pagetop.hide();
      // 100px スクロールしたらボタン表示
      $(window).scroll(function () {
         if ($(this).scrollTop() > 100) {
              pagetop.fadeIn();
         } else {
              pagetop.fadeOut();
         }
      });
      pagetop.click(function () {
         $('body, html').animate({ scrollTop: 0 }, 500);
         return false;
      });
    });
});
//　ここまで

//　プレビュー機能
$(document).on('turbolinks:load', function(){
    $(function(){
      $('#myfile').change(function(e){
        //ファイルオブジェクトを取得する
        var file = e.target.files[0];
        var reader = new FileReader();

        //画像でない場合は処理終了
        if(file.type.indexOf("image") < 0){
          alert("画像ファイルを指定してください。");
          return false;
        }

        //アップロードした画像を設定する
        reader.onload = (function(file){
          return function(e){
            $("#img1").attr("src", e.target.result);
            $("#img1").attr("title", file.name);
          };
        })(file);
        reader.readAsDataURL(file);

      });
    });
});
// ここまで

// ホームインデックス トグル機能
$(document).on('turbolinks:load', function(){
  $(function(){
    $('#content1').toggle();
      $("#subtitle1").click(function(){
        $("#content1").toggle();
    });

    $('#content2').toggle();
      $("#subtitle2").click(function(){
        $("#content2").toggle();
    });

    $('#content3').toggle();
      $("#subtitle3").click(function(){
        $("#content3").toggle();
    });
  });
});
//ここまで