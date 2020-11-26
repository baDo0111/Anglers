# サイト概要
釣り人同士が釣った魚を写真と共に共有できるサイトです。<br>
レスポンシブにも対応していますのでスマートフォンからもご利用ください。

<img width="1680" alt="スクリーンショット 2020-11-26 10 48 56" src="https://user-images.githubusercontent.com/64691328/100345093-281f5f80-3025-11eb-9709-9656e8ed13bd.png">

<img width="1680" alt="スクリーンショット 2020-11-26 10 49 28" src="https://user-images.githubusercontent.com/64691328/100345395-9cf29980-3025-11eb-82c5-b34a99318e47.png">

# サイトテーマ
釣って楽しい、（記録/想い出を）残して楽しい。

# URL https://anglers.website

# テーマを選んだ理由
私の趣味は『釣り』をする事です。<br>
高校生の時に一生の思い出に残る経験をしました。それは、5kgのヒラメを釣り上げた経験です。<br>
釣った魚の中には、その人にとって「一生に一度の出逢えるかどうかの魚」が釣れることがあります。<br>
「初めて釣った魚」、「釣り人仲間が釣った魚」など、釣り人にとって想い出は様々です。<br>
そんな想い出を、釣り人同士で共有できるサービスがあれば良いと思いこのテーマを選びました。

# 主な利用シーン
「人生初の釣りで最初に釣り上げた魚」、「一生に一度出逢えるかどうかの大物」など<br>自分で釣った魚を食べながら、釣った魚の想い出を仲間と語ることができる。<br>
釣り人にとって、とても有意義な時間です。<br>
そんなシーンに使ってもらいたいと思い制作しました。<br>

# AWS構成図
<img width="603" alt="スクリーンショット 2020-11-26 21 47 28" src="https://user-images.githubusercontent.com/64691328/100352961-1e035e00-3031-11eb-83ae-29cd92e3c023.png">

# 使用技術
・Ruby 2.5.7<br>
・Ruby on Rails 5.2.4.3<br>
・MySQL　5.7<br>
・Nginx<br>
・Puma<br>
・AWS<br>
　 ◦ VPC<br>
　 ◦ EC2(異なるAZへそれぞれ1台ずつ起動した冗長化構成)<br>
　 ◦ RDS(プライベートサブネット上に構築)<br>
　 ◦ Route53(ドメインの取得、https化に使用)<br>
　 ◦ CloudWatch(EC2がダウンした際に、管理者にメールを通知するように設定)<br>
　 ◦ ALB(https化に使用)<br>
　 ◦ Capistrano<br>
　 ◦ device<br>
　 ◦ Ajax<br>
　 ◦ refile<br>
　 ◦ Bootstrap<br>
　 ◦ pry-byebug<br>
　 ◦ BEM記法<br>
　 ◦ Scss<br>

### 機能一覧
https://docs.google.com/spreadsheets/d/1Pcd3tI1jsGVAhvcoJgo87O1GDY7d3mHx4aTzn3zVCeM/edit#gid=0

