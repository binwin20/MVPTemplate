package ${packageName};

import javax.inject.Inject;

/**
 * Created by FTL
 */
public class ${myModule}Presenter implements ${myModule}Contract.Presenter {

    private ${myModule}Contract.View mView;

    @Inject
    public ${myModule}Presenter(${myModule}Contract.View view) {
        mView = view;
        mView.setPresenter(this);
    }


    @Override
    public void subscribe() {

    }

    @Override
    public void unsubscribe() {

    }
    
}
