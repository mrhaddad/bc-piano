@bcpiano.controller('MasterclassesController', ['$timeout', 'Restangular', ($timeout, Restangular) ->
  controller = this
  Restangular.all('api/masterclasses').getList().then (response) ->
    controller.masterclasses = response
    $timeout ->
      top = $('li.current').offset().top - 70
      $('body').animate({scrollTop: top}, 300)
])

@bcpiano.controller('MasterclassController', ['$scope', 'Restangular', ($scope, Restangular) ->
  vm = this
  vm.performance = {composer: '', title: ''}

  this.performanceInvalid = -> !vm.performance.composer || !vm.performance.title

  this.signUp = ->
    Restangular.all("api/masterclasses/#{$scope.masterclass.id}/performances").post(vm.performance).then (response) ->
      $scope.masterclass.performances = response
      vm.performance = {composer: '', title: ''}

  this.updatePerformance = (index) ->
    performance = $scope.masterclass.performances[index]
    Restangular.all("api/masterclasses/#{$scope.masterclass.id}/performances/#{performance.id}").patch(performance).then (response) ->
      performance.editing = false

  this.deletePerformance = (index) ->
    if window.confirm('Are you sure?')
      Restangular.all("api/masterclasses/#{$scope.masterclass.id}/performances/#{$scope.masterclass.performances[index].id}").remove().then (response) ->
        $scope.masterclass.performances.splice(index, 1)
])

