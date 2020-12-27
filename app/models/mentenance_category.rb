class MentenanceCategory < ActiveHash::Base
  self.data = [
    { id:'玄関ドアの拭き掃除について（屋外面）'  , name:'水気を残さないように硬く絞った布で吹き上げましょう。金属製の玄関ドアのお掃除は月1回ぐらいが目安になります。' },
    { id:'玄関ドアの拭き掃除について（室内面）'  , name:'冬場は結露をこまめに拭き取りましょう。金属製の玄関ドアのお掃除は月1回ぐらいが目安になります。' },
    { id: '玄関ドアクローザーの拭き掃除について'  , name:'ホコリが溜まった状態で使用すると、将来的に異音の原因になります。お掃除は月1回ぐらいが目安になります。' },

    { id: '窓ガラスのお掃除について'   , name:'サッシレールのホコリはガラス障子の異音の原因になるので特に注意しましょう。サッシのお掃除は月1回ぐらいが目安になります。' },
    { id: '網戸のお掃除について'  , name:'水に濡らしたメラミンスポンジを縦・横方向に優しく撫でるとホコリが取れます。網戸のお掃除は月1回ぐらいが目安になります。' },
    { id: 'シューズボックス内のお掃除について' , name:'靴底についた砂利が隅の方に溜まっていませんか？靴に残った匂いが籠もってしまうので適度に換気しましょう。シューズボックスのお掃除は月1回ぐらいが目安になります。' },
    { id: 'シューズボックス扉のお掃除について' , name:'扉表面の取手付近は手垢がつきやすい箇所なので黒ずむ前に綺麗にする習慣を。シューズボックスのお掃除は月1回ぐらいが目安になります。' },
    { id: 'フローリングの水拭きについて'  , name:'水分を残さないように硬く絞った布を使用しましょう。しつこい汚れには中性洗剤がおすすめですが、ワックスコーティングをしている場合は使用不可です。フローリングの雑巾がけは1ヶ月～3ヶ月に一回が目安になります。' },
    { id: 'フローリングの掃き掃除について'  , name:'フローリングの繋ぎ目（目地）に沿って行いましょう。フローリングの掃き掃除は週1回ぐらいが目安になります。' },
    { id: '巾木のお掃除について'  , name:'巾木にはホコリが溜まりやすいのでこまめに取り除きましょう。いきなり濡れ雑巾で吹き上げてしまうと壁紙を汚す可能性がありますので注意してください。巾木のお掃除はフローリングと合わせておこないましょう。' },
    { id: 'タイル床のお掃除について' , name:'付着したばかりの汚れは水＋ブラシで落ちる可能性があります。沈着してしまった汚れに関しては除去は難しいです。タイル床のお掃除は月1回ぐらいが目安になります。' },
    { id: 'タイル床の掃き掃除について' , name:'ホコリが溜まったままにするとドアの開け閉めでホコリが舞ってしまい体によくありません。タイル床の掃き掃除は週1回ぐらいが目安になります。' },
    { id: 'シャッターのレールのお掃除について' , name:'濡れた雑巾を割り箸などに巻いてレール内を上下することでモヘアの汚れを綺麗にしましょう。シャッターのお掃除は月1回ぐらいが目安になります。' },
    { id: 'シャッターボックスのお掃除について'  , name:'雨垂れやホコリなどが付着しやすい箇所です。強く押すと凹みます。優しく水拭きするか水で流すに留めましょう。高所なので足場には十分気を付けましょう。シャッターボックスのお掃除は３ヶ月に1回ぐらいが目安になります。' },
    { id: 'シャッター本体（スラット）のお掃除について' , name:'外から水をかけてホコリを落とし、水気を残さないように吹き上げましょう。シャッター本体のお掃除は使用頻度に応じて３ヶ月〜半年に1回ぐらいが目安になります。' },
    { id: '吸気口のお掃除について' , name:'フィルターを取り外し掃除機で汚れを吸い取りましょう。吸気口のフィルターお掃除の目安は2週間に1回、汚れ具合に応じて年に1回はフィルター交換推奨しております。' },
    { id: 'クローゼットのメンテナンスについて' , name:'開閉に違和感を感じたら丁番の調整などのメンテナンスしましょう。 扉にハンガーをかけるのは作動不良を起こす原因になるので避けましょう。' },
    { id: '畳の掃き掃除について'  , name:'畳の目に沿って柔らかいほうきを使用して下さい。畳の掃き掃除は週1回ぐらいが目安になります。' },
    { id: '畳の水拭き掃除について' , name:'硬く絞った布を使用して下さい。洗剤は禁止。水拭き前にホコリを取り除くことを忘れないようにしましょう。畳の拭き掃除は月1回ぐらいが目安になります。' },
    { id: '敷居のお掃除について' , name:'敷居の上に輪ゴムを置いてその輪ゴムを引きずるように障子を動かすと輪ゴムと一緒にホコリが取れます。敷居のお掃除は週1回ぐらいが目安になります。' },
    { id: '水回りの水垢について' , name:'水垢は水道水に含まれるカルキによって発生する為、濡れたまま放置しないのが一番の予防策です。水垢ができた場合にはクエン酸を使用し水洗いすると効果的です。水回りのお掃除は週1回ぐらいが目安になります。' },
    { id: '水回りの洗剤汚れについて', name:'重曹を振りかけ1時間程度放置した後、水とスポンジで洗い流しましょう。水回りのお掃除は週1回ぐらいが目安になります。' },
    { id: 'シンクの排水口のお掃除について' , name:'日頃のお手入れとしては50℃程度のお湯をたくさん流すと汚れが取れやすくなります。しつこい汚れや匂いにはキッチンハイターなど塩素系がよく取れます。※他の洗剤とは混ぜないようにしましょう。排水口のお掃除は汚れ具合に応じて1ヶ月～3ヶ月に一回ぐらいが目安になります。' },
    { id: 'キッチン周りの油汚れについて' , name:'重曹を振りかけ1時間放置した後、水とスポンジで洗い流します。重曹水で拭き上げも可。電子部品やバーナーには注意。キッチン周りのお掃除は汚れ具合に応じて週1回ぐらいが目安になります。' },
    { id: 'コンロのお掃除について' , name:'コンロやグリルは取り外せるパーツの重曹つけ置き洗いが有効です。パーツの取り外しの際には電子部品やバーナーには注意しましょう。キッチン周りのお掃除は汚れ具合に応じて週1回ぐらいが目安になります。' },
    { id: 'レンジフードのお掃除について' , name:'フィルターが取り外せるタイプは重曹を使用しましょう。市販のフィルターを貼り付けている場合は茶色くなる前に交換しましょう。キッチン周りのお掃除は汚れ具合に応じて週1回ぐらいが目安になります。' },
    { id: 'レンジフード周辺のお掃除について', name:'レンジフード周辺は油が付着している為、ベタつきやすくホコリがつきやすいです。ベタつきを感じたら重曹でのお手入れを行いましょう。キッチン周りのお掃除は汚れ具合に応じて週1回ぐらいが目安になります。' },
    { id: '洗面化粧台の排水口のお掃除について' , name:'まずはこまめに髪の毛の除去を行いましょう。しっかりした汚れにはパイプユニッシュなどの塩素系洗剤の使用しましょう。水回りのお掃除は週1回ぐらいが目安になります。' },
    { id: '洗面化粧台の鏡のお掃除について' , name:'クエン酸パックで半日ほど置いて吹き上げましょう。濡れたままにしないようにこまめに吹き上げましょう。水回りのお掃除は週1回ぐらいが目安になります。' },
    { id: '洗濯パンや洗濯機天面のホコリ除去' , name:'洗濯機の移動まで必要ありませんが、ホコリが溜まりやすい箇所なので、見えている範囲はホコリを除去しましょう。水回りのお掃除は週1回ぐらいが目安になります。' },
    { id: '浴室洗い場のお掃除について' , name:'皮脂や洗剤カスが残らないように利用後（毎日）はお湯でしっかり流し冷水をかけてよく室内を冷やしましょう。その上で、ピンク汚れが発生した場合は塩素系カビ取り剤を活用しましょう。ピンク汚れの原因は菌です。洗剤を用いてのお掃除は週2〜3回ぐらいが目安です。' },
    { id: '浴室浴槽のお掃除について' , name:'皮脂や洗剤カスが残らないように利用後（毎日）はお湯でしっかり流し冷水をかけてよく室内を冷やしましょう。その上で、ピンク汚れが発生した場合は塩素系カビ取り剤を活用しましょう。ピンク汚れの原因は菌です。洗剤を用いてのお掃除は週2〜3回ぐらいが目安です。'  },
    { id: '浴室の排水口のお掃除について' , name:'週に1回はキャップを外し髪の毛の除去を行いましょう。しつこい汚れにはパイプユニッシュなどの塩素系洗剤の使用しましょう。' },
    { id: '換気扇（浴室暖房乾燥機）のお掃除について' , name:'2週間に1回フィルターを取り外し掃除機で汚れを吸い取りましょう。お手入れお知らせ機能がある場合はそちらに従いましょう。' },
    { id: '便器のお掃除について' , name:'毎日1分程度の簡単な掃除＋週に一度のしっかり掃除をおこないましょう。しっかり掃除は中性洗剤とブラシでお掃除ですが、黒ずみがある場合は重曹、重曹でも無理な汚れはクエン酸を活用しましょう。' },
    { id: '便座のお掃除について'  , name:'中性洗剤で拭き上げましょう。便座カバーは週1回の洗濯を推奨。便座の機種により向かって右側にリフトアップのボタンやフィルターが備えてあります。' },
    { id: '手洗い付きタンクのお掃除について' , name:'ホコリが溜まりやすいので除去しましょう。水垢がある場合クエン酸を使用すると良いでしょう。月に1回の掃除が目安となります。' },
    { id: 'トイレ内手洗いカウンターのお掃除' , name:'ボウル内の水垢にはクエン酸を活用しましょう。周囲の壁などに跳ねた水汚れの吹き上げは、壁紙が痛み可能性がある為洗剤の使用は控えましょう。月に1回の掃除が目安となります。' },
    { id: 'トイレの床のお掃除について' , name:'お掃除シートや中性洗剤を使用して拭き上げましょう。マットやカバーなどの布類は週に1回は洗濯をしましょう' },
    { id: '階段の踏板(床)のお手入れについて' , name:'特に隅にはホコリが溜まりやすいのでしっかり除去しましょう。水拭きの場合は水拭きの後に乾拭きを行い床に水分を残さないようにしましょう。週に1回ぐらいが目安となります。' },
    { id: 'バルコニーの床のお掃除について' , name:'モップなどを使用して水洗いしましょう。バルコニーのお掃除は1ヶ月〜3ヶ月に1回ぐらいが目安となります。（デッキブラシは床の表面を傷つける為避けた方が良いでしょう。）' },
    { id: 'バルコニーの排水溝のお掃除について' , name:'ゴミキャッチャーに髪の毛やホコリが溜まっていないか確認しましょう。雨樋内部の清掃も兼ねて水を流してホコリや汚れを落としましょう。バルコニーのお掃除は1ヶ月〜3ヶ月に1回ぐらいが目安となります。' },
    
    { id: 'サインポール（機能性門柱）のお掃除について' , name:'天面には汚れが溜まりがちです。カメラレンズ部分の拭き上げも行いましょう。洗剤を使用する場合は中性洗剤を使用しましょう。サインポール（機能性門柱）のお掃除は1ヶ月〜3ヶ月に1回ぐらいが目安となります。' },
    { id: 'ポストのお掃除について' , name:'郵便物が汚れないように外側・内側を吹き上げましょう。洗剤を使用する場合は中性洗剤を使用しましょう。ポストのお掃除は1ヶ月〜3ヶ月に1回ぐらいが目安となります。' },
    { id: '駐車スペース土間のお掃除'  , name:'付着したばかりのタイヤコンは水とデッキブラシで落とせることが多いです。高圧洗浄機の使用も有効です。駐車スペース土間のお掃除は汚れに応じて1ヶ月〜3ヶ月に1回ぐらいが目安となります。' },
    { id: '駐車スペース土間のサビについて' , name:'自転車スタンドなどから付着したサビは、サンドペーパーやワイヤーブラシで擦ると落とせることがあります。' },
    { id: '雑草の処理について' , name:'除草剤の種類は豊富で雑草の種類によって効果が変わるので注意して下さい。砂利の下に除草シートをしいておくのも有効です。雑草の処理は状況に応じて1ヶ月に1回ぐらいが目安となります。' },
    { id: '汚水桝のお掃除について' , name:'マイナスドライバーで蓋を明け、水を流して滞留物を流しましょう。高圧洗浄機などによる清掃は有効です。汚水の跳ね返りに注意しましょう。半年〜1年に１度がお手入れの目安となります。夏場な匂いがキツく冬場は汚れが固まっていることがあります、春秋に行うのが良いでしょう。' },

    { id: '外部機器の蜘蛛の巣のお掃除について' , name:'給湯器などの外部機器には蜘蛛の巣が張りがちです。蜘蛛の巣を見つけた時には除去しましょう。蜘蛛の巣が付きにくくなるスプレーなどで対策するのが有効です。' },
    { id: '外部機器の蜂の巣のお掃除について' , name:'給湯器であればカバーの裏側、シャッターボックスであればボックス裏側など空間に巣があることがあります。スズメバチは夏の終わりから秋に発生しやすいです。無理にご自身で駆除しようとせず業者などに依頼しましょう' },
    { id: '外部機器のお掃除について' , name:'まずは水拭きをおこない、しつこい汚れには中性洗剤を使用しましょう。ただし、エアコンの室外機や給湯器など風雨に晒されている面は表面が劣化している可能性があります。拭き掃除などは目立たない箇所で試してからにしましょう。半年に1回ぐらいが目安となります。' },
    { id: '外壁のお掃除について' , name:'ホース水をかけてスポンジなどで汚れを落とすのが良いでしょう。壁内部に浸水することはありません。半年〜1年に1回ぐらいが目安となります。' }
  ]
end
