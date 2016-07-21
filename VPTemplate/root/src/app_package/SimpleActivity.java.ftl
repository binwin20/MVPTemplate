package ${packageName};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;


import ${applicationPackage}.common.base.BaseActivity;
import ${applicationPackage}.R;

import javax.inject.Inject;


/**
 * Created by FTL
 */
public class ${myModule}Activity extends BaseActivity {

    @Inject
    ${myModule}Presenter m${myModule}Presenter;

    ${myModule}Fragment m${myModule}Fragment;

    public static void startIntent(Context context) {
        Intent intent = new Intent(context, ${myModule}Activity.class);
        context.startActivity(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activity_layout});

        if (m${myModule}Fragment == null) {
            m${myModule}Fragment = ${myModule}Fragment.newInstance();
            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.fragment_container, m${myModule}Fragment);
            transaction.commit();
        }

        Dagger${myModule}Component.builder()
                .${myModule?uncap_first}PresenterModule(new ${myModule}PresenterModule(m${myModule}Fragment))
                .appComponent(getAppComponent())
                .build()
                .inject(this);
    }


    @Override
    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof ${myModule}Fragment) {
            m${myModule}Fragment = (${myModule}Fragment) fragment;
        }
    }

}
