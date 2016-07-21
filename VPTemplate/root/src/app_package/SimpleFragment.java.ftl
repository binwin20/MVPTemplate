package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${applicationPackage}.base.BaseFragment;
import ${applicationPackage}.R;


/**
 * Created by FTL
 */
public class ${myModule}Fragment extends BaseFragment implements ${myModule}Contract.View {

    private ${myModule}Contract.Presenter mPresenter;

    public static ${myModule}Fragment newInstance() {
        Bundle args = new Bundle();
        ${myModule}Fragment fragment = new ${myModule}Fragment();
        fragment.setArguments(args);
        return fragment;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        mView = inflater.inflate(R.layout.${fragment_layout}, container, false); 

        return mView;
    }

    @Override
    public void onStart() {
        super.onStart();
        mPresenter.subscribe();
    }

    @Override
    public void onStop() {
        super.onStop();
        mPresenter.unsubscribe();
    }

    @Override
    public void setPresenter(${myModule}Contract.Presenter presenter) {
        mPresenter = presenter;
    }

}
