# 実行方法

## 通常の実行方法

```
$ clockwork lib/sesami.rb
```

## バックグランドでの実行方法

```
$ nohup clockwork lib/sesami.rb & 
```

プロセスを停止する場合

```
$ ps -x | grep clock
$ kill [プロセスID]
```