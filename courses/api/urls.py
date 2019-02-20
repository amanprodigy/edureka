from rest_framework import routers
from django.urls import path, include
from . import views

router = routers.DefaultRouter()
router.register('courses', views.CourseViewSet)


app_name = 'courses'

urlpatterns = [
    path('subjects/',
         views.SubjectListView.as_view(),
         name='subject-list'),
    path('subjects/<pk>/',
         views.SubjectDetailView.as_view(),
         name='subject-detail'),
    # path('courses/<pk>/enroll/',
    #     views.CourseEnrollView.as_view(),
    #     name='course_enroll'),
    path('', include(router.urls)),
]
