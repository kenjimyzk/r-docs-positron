#############################
## 第8章　操作変数法 例8.4 ##
#############################

#データの読み込み
income8 <- read.table("8_income.csv", header = TRUE, sep = ",")

#操作変数法を実行するコマンドを含むパッケージ「AER」をインストール
#install.packages("AER")
#操作変数法を実行するコマンドを含むパッケージを読み込む
require(AER)

#修学年数の操作変数として兄弟姉妹数も加えた2段階最小2乗法でミンサー方程式を推定
ivreg1 <- ivreg(lincome ~ yeduc + exper + exper2 | 
                  exper + exper2 + payeduc + sibs, data=income8)
summary(ivreg1)

ols1 <- lm(yeduc~exper + exper2 + payeduc + sibs, data=income8)
fitted(ols1)
ols2 <- lm(lincome ~ fitted(ols1) + exper + exper2,data=income8)
summary(ols2)
