package com.NHOM5.ALOUTE.config;

import org.apache.catalina.*;
import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.springframework.util.ResourceUtils;

import java.net.URI;
import java.net.URL;


public class MySiteMeshFilter extends ConfigurableSiteMeshFilter {
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/*", "decorator.html")
                .addDecoratorPath("/admin/*", "admin/decorator.html");
    }

    public static class JSPStaticResourceConfigurer implements LifecycleListener
    {
        private final Context context;

        public JSPStaticResourceConfigurer(Context context)
        {
            this.context = context;
        }

        private final String subPath = "/META-INF";

        @Override
        public void lifecycleEvent(LifecycleEvent event)
        {
            if (!event.getType().equals(Lifecycle.CONFIGURE_START_EVENT))
            {
                return;
            }

            final URL finalLocation = getUrl();
            this.context.getResources().createWebResourceSet(
                    WebResourceRoot.ResourceSetType.RESOURCE_JAR,
                    "/",
                    finalLocation,
                    subPath
            );
        }

        private URL getUrl()
        {
            final URL location = this.getClass().getProtectionDomain().getCodeSource().getLocation();


            if (ResourceUtils.isFileURL(location))
            {
                return location;
            }
            else if (ResourceUtils.isJarURL(location))
            {
                try
                {
                    // when run as fat jar
                    //transform
                    //nested:/home/myfiles/Projects/myproj/myjar.jar/!BOOT-INF/classes/!/
                    //to
                    //jar:file:/home/myfiles/Projects/myproj/myjar.jar!/
                    String locationStr = location.getPath()
                            .replaceFirst("^nested:", "")
                            .replaceFirst("/!BOOT-INF/classes/!/$", "!/");
                    return new URI("jar:file", locationStr, null).toURL();
                }
                catch (Exception e)
                {
                    throw new IllegalStateException("Unable to add new JSP source URI to tomcat resources", e);
                }
            }
            else
            {
                throw new IllegalStateException("Can not add tomcat resources, unhandleable url: " + location);
            }
        }
    }
}
