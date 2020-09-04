# ポリモーフィック関連の練習アプリ

タイトルのとおり。  
ポリモーフィックの練習なので、バリデーションとか、NULL制約とかは何もつけてません。  

- [PracticeApp - Tagpolymorphic](https://miketa-polymorphic.herokuapp.com/)

## 経緯

ポリモーフィックの勉強をしていたら、Tag付けできるアプリ作ってみたらと言われたのでやってみた。  
軽いノリで始めたが、すごく大変だった。createアクションで苦労した。  

## ノートなど

まず、メンターさんに質問をしてみた。
- [質問リスト](https://github.com/miketa-webprgr/TIL/blob/6d3f60d13f494b89365df858ef477c984281555d/99_etc/20200828_dyson_questions.md)

次に、練習アプリに取り組みだした。  
createアクションの方法論で悩んだので、考えたことを自分なりに整理した。  

- [【自分用メモ】ポリモーフィックな関連付けをして、フォームを作成する場合の方法論 \- Qiita](https://qiita.com/miketa_webprgr/items/f9d536f8265ca52b5092)

仲間内で勉強会を開催することになった。４人も聴いてくれることに！  
話ができるようにノートを作っていたら、長くなった。  

- [勉強会用の資料](https://github.com/miketa-webprgr/TIL/blob/master/99_etc/20200902_polymorphoric_explanation.md)

## 結論

ポリモーフィック関連付けをして、createアクションを書く場合、コントローラを分けましょう。  

- [Comments With Polymorphic Associations \(Example\) \| GoRails](https://gorails.com/episodes/comments-with-polymorphic-associations?autoplay=1)
- [GitHub: gorails\-episode\-36/app/controllers at master · gorails\-screencasts/gorails\-episode\-36](https://github.com/gorails-screencasts/gorails-episode-36/tree/master/app/controllers)

## 今後の課題

ポリモーフィック関連付けをしたテーブルを中間テーブルにするということがやってみたい。  
- [polymophicなテーブルを経由して、has\_many thourghする。 \| So Far, So Tech](https://ver-1-0.net/2018/02/14/post-1918)
