#############################
## 第8章　操作変数法 例8.2 ##
#############################

#データの読み込み
income8 <- read.table("8_income.csv", header = TRUE, sep = ",")

#ミンサー方程式を重回帰で推定
reg1 <- lm(lincome ~ yeduc + exper + exper2, data = income8)
summary(reg1)

#操作変数法を実行するコマンドを含むパッケージ「AER」をインストール
if (!require(AER)) {install.packages("AER");require(AER)}
#操作変数法を実行するコマンドを含むパッケージを読み込む
# require(AER)

#ミンサー方程式を操作変数法で重回帰
ivreg1 <- ivreg(lincome ~ yeduc + exper +exper2 | 
                  exper + exper2 + payeduc, data = income8)
summary(ivreg1)
