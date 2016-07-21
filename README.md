# MVP Template

这是一个 Android Studio 模版, 用于生成 MVP 中的 VP 部分代码, MVP 参考 [谷歌 MVP Demo](https://github.com/googlesamples/android-architecture/tree/todo-mvp-dagger/).

生成的文件有

- src/{Package}.{Module}Activity.java
- src/{Package}.{Module}Fragment.java
- src/{Package}.{Module}Component.java
- src/{Package}.{Module}Contract.java
- src/{Package}.{Module}Fragment.java
- res/layout/activity_{module}.xml (可配置)
- res/layout/fragment_{module}.xml (可配置)

## 配置方式

1. 下载本项目, 修改 src/app_package/SimpleActivity.java.ftl 的 BaseActivity 路径和 src/app_package/SimpleFragment.java.ftl 的 BaseFragment 路径
2. 将 **VPTemplate** 文件夹复制到 Android Studio 的 `plugins/android/lib/templates/activity/` 目录下
3. 重启 Android Studio
4. 配置 Dagger2 环境

### 创建 Dagger 的配置文件 和 MVP 的 Base 文件

说明: {applicationPackage} 是项目包名

- 创建 {applicationPackage}.AppComponent.java
```java
@Singleton
@Component(modules = {AppModule.class, OtherModule.class})
public interface AppComponent {

}
```

- 创建 {applicationPackage}.annotation.FragmentScrop.java
```java
@Scope
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface FragmentScrop {
}
```

- 创建 {applicationPackage}.base.BasePresenter.java
```java
public interface BasePresenter {
    
    void subscribe();

    void unsubscribe();
}
```

- 创建 {applicationPackage}.base.BaseView.java
```java
public interface BaseView<T> {

    void setPresenter(T presenter);

    void showLoadingView();

    void hideLoadingView();

    void showMsg(String msg);
}
```

- 定义 资源ID ids.xml
```xml
<resources>
    <item name="fragment_container" type="id"/>
</resources>
```

## 创建模块

定义模块路径之后, 右键模块包名 -> New -> Activity -> MVP TEmplate

填写模块名(如登录模块: Login), Activity 和 Fragment 的布局文件, Finish

*注: 完成之后需要编译一遍代码才能生成 Dagger{Module}Component 类*

