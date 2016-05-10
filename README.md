SCUxCHG
---

[ ] 用户注册登录
[ ] 发布二手商品信息
[ ] 购买商品
[ ] 最新商品展示
[ ] 用户管理
[ ] 商品信息管理
[ ] 商品审核
[ ] 留言管理
[ ] 发布公告信息
[ ] 检查用户输入错误项进行提示
[ ] 联网
[ ] 后台管理分页

### 项目进度

> 2016.5.1

- Client

	> 2016-5-1 EDIT

	- 学习Auto Layout	[demo][1]
	- 学习Tab bar	[demo][2]
	- 学习Navigation Controller	[demo][3]
	- 学习block回调	
	- 学习delegate模式	[demo][4]
	- 学习使用Afnetworking发送请求	[demo][5]

	> 2016-5-8 EDIT

	- 采用代码构建界面，使用`Masonry库`
	- 搭建初始页面，根视图控制器为`UITabBarController`，底部由三个tab组成。


- Server

	> 2016-5-1 EDIT

	- 接收app端发送的GET、POST请求，目前可以接收请求，数据解析还未完成

	> 2016-5-8 EDIT

	- 可以与app端交换json数据。
	- 连接mysql数据库完成。（目前在考虑是否使用nosql）


[1]: https://github.com/penguin-penpen/ALDemo
[2]: https://github.com/penguin-penpen/TabDemo
[3]: https://github.com/penguin-penpen/NavDemo
[4]: https://github.com/penguin-penpen/pDelegateDemo
[5]: https://github.com/penguin-penpen/loginDemo


项目结构
---


实例类
---

- BaseEntity : JSONModel

	> (NSNumber*) id

	- CategoryEntity

		> (NSString*) name

		> (NSNumber*) number

		> (NSArray*) products

	- ProductEntity

		> (NSString*) name

		> (NSNumber*) price

		> (NSString*) imageSmall

		> (NSNumber*) attrId

	- ProductAttrEntity

		> (NSNumber*) campus

		> (NSNumber*) quality

	- CartEntity

		> (NSNumber*) count

		> (NSNumber*) isSelected

		> (NSNumber*) productId

	- UserEntity

		> (NSString*) name

		> (NSString*) phome

		> (NSString*) avatar

		> (NSString*) ip

		> (NSString*) regDate

		> (NSString*) loginDate

		> (NSNumber*) level

		> (NSNumber*) campus

	- OrderEntity

		> (NSNumber*) totalPrice

		> (NSNumber*) userId

		> (NSString*) createDate

		> (NSString*) payDate

		> (NSNumber*) hasPaid

		> (NSString*) payType

		> (NSString*) trasactionId

		> (NSArray*) productIds 






