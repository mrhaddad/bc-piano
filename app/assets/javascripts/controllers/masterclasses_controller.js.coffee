@bcpiano.controller('MasterclassesController', ['Restangular', (Restangular) ->
  this.masterclasses = Restangular.all('api/masterclasses').getList().$object
])

