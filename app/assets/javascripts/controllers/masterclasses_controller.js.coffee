@bcpiano.controller('MasterclassesController', ['$scope', 'Restangular', ($scope, Restangular) ->
  $scope.masterclasses = Restangular.all('api/masterclasses').getList().$object
])

