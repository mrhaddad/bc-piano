@bcpiano = angular.module('bcpiano', ['restangular'])

@bcpiano.run(['$rootScope', ($rootScope) ->
  # $rootScope.signedIn = -> $("a[href='/users/sign_out']").length
  # $rootScope.signedOut = -> ! $rootScope.signedIn()
])
