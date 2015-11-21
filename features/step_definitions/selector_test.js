'use strict';

var expect = require('chai').expect;

module.exports = function() {
    this.World = require('../support/world.js').World;

    this.Given(/^test page is opened$/, function () {
        return this.driver.get('http://localhost:8080');
    });
    
    this.When(
        /^the (.*): "(.*)" selector is measured (\d+) times$/,
        function (type, selector, n, callback) {
            var locator = {},
                start = new Date().getTime(),
                self = this;
            locator[type] = selector;
            var x = n;
            function executeSelector() {
                if (x > 0) {
                    self.driver.findElements(locator).then(function(elements){
                        x--;
                        executeSelector();
                    });
                } else {
                    start = new Date().getTime() - start;
                    console.log('Avg. time: ' + (start/n) + 'ms');
                    callback();
                }
            }
            executeSelector();
        }
    );
};