from django.urls import path
from manageApp import views



urlpatterns = [
    path('', views.index)
]