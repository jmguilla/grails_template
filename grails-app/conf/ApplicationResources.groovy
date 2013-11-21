modules = {
  main_css{ resource url: 'css/main.css' }
  application { resource url:'js/application.js' }
  angular{
    resource url: 'js/lib/angular.js'
    resource url: 'js/lib/angular-resource.js'
  }
  angular_app {
    dependsOn 'angular'
    resource url:'js/app/services.js'
    resource url:'js/app/controllers.js'
    resource url:'js/app/app.js'
  }
}