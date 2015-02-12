@bcpiano.controller('MasterclassesController', ['Restangular', (Restangular) ->
  this.masterclasses = Restangular.all('api/masterclasses').getList().$object
])

@bcpiano.controller('MasterclassController', ['$scope', 'Restangular', ($scope, Restangular) ->
  vm = this
  vm.performance = {composer: '', title: ''}

  this.signUp = ->
    Restangular.all("api/masterclasses/#{$scope.masterclass.id}/performances").post(vm.performance).then (response) ->
      $scope.masterclass.performances.push(response) if response.id
      vm.performance = {composer: '', title: ''}

  this.deletePerformance = (index) ->
    if window.confirm('Are you sure?')
      Restangular.all("api/masterclasses/#{$scope.masterclass.id}/performances/#{$scope.masterclass.performances[index].id}").remove().then (response) ->
        $scope.masterclass.performances.splice(index, 1)
])

