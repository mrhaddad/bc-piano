@bcpiano.controller('MasterclassesController', ['Restangular', (Restangular) ->
  this.masterclasses = Restangular.all('api/masterclasses').getList().$object
])

@bcpiano.controller('MasterclassController', ['$scope', 'Restangular', ($scope, Restangular) ->
  vm = this
  vm.performance = {composer: '', title: ''}

  this.signUp = ->
    Restangular.all("api/masterclasses/#{$scope.masterclass.id}/performances").post(vm.performance).then (response) ->
      console.debug response
      $scope.masterclass.performances.push(response) if response.id
      vm.performance = {composer: '', title: ''}
])

