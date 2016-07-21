<?xml version="1.0"?>
<recipe>

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${myModule}Activity.java" />

    <!-- <open file="${escapeXmlAttribute(srcOut)}/${myModule}Activity.java" /> -->

    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${myModule}Fragment.java" />

    <!-- <open file="${escapeXmlAttribute(srcOut)}/${myModule}Fragment.java" /> -->

    <instantiate from="root/src/app_package/SimpleComponent.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${myModule}Component.java" />

    <!-- <open file="${escapeXmlAttribute(srcOut)}/${myModule}Component.java" /> -->

    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${myModule}Contract.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${myModule}Contract.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${myModule}Presenter.java" />

    <!-- <open file="${escapeXmlAttribute(srcOut)}/${myModule}Presenter.java" /> -->

    <instantiate from="root/src/app_package/SimplePresenterModule.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/${myModule}PresenterModule.java" />

    <!-- <open file="${escapeXmlAttribute(srcOut)}/${myModule}PresenterModule.java" /> -->


    <instantiate from="root/res/layout/activity_simple.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${activity_layout}.xml" />

    <instantiate from="root/res/layout/fragment_simple.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}.xml" />
</recipe>
