from django.conf.urls.defaults import patterns, include, url

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('fibseq.views',
    # Examples:
    # url(r'^$', 'fibonacci.views.home', name='home'),
    # url(r'^fibonacci/', include('fibonacci.foo.urls')),
    url(r'^latest$', 'latest', name='latest'),
    url(r'^$', 'index', name='index')

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)
