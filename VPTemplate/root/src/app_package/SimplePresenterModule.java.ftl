package ${packageName};

import dagger.Module;
import dagger.Provides;

/**
 * Created by FTL
 */
@Module
public class ${myModule}PresenterModule {
    private ${myModule}Contract.View mView;

    public ${myModule}PresenterModule(${myModule}Contract.View view) {
        mView = view;
    }

    @Provides
    ${myModule}Contract.View provide${myModule}ContractView() {
        return mView;
    }
}
