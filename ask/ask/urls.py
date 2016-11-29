from django.conf.urls import include, url
from django.contrib import admin

from qa.views import test as t

admin.autodiscover()

urlpatterns = [
    url(r'^$', t, name='home'),
    url(r'^', include('qa.urls')),
    #url(r'^admin/', admin.site.urls),
]
