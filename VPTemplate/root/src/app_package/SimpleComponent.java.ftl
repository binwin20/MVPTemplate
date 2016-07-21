package ${packageName};

import ${applicationPackage}.AppComponent;
import ${applicationPackage}.annotation.FragmentScrop;

import dagger.Component;

/**
 * Created by FTL
 */
@FragmentScrop
@Component(dependencies = AppComponent.class, modules = ${myModule}PresenterModule.class)
public interface ${myModule}Component {
    void inject(${myModule}Activity ${myModule?uncap_first}Activity);
}
