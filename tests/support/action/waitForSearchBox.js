/**
 * Wait for the searchBox to exist
 *                                             existence)
 */
module.exports =
() => {
    /**
     * Command to perform on the browser object
     * @type {String}
     */
    let elem = '#content > div.home-search > div.search-block.has-price-range';

    /**
     * Maximum number of milliseconds to wait, default 3000
     * @type {Int}
     */
    let intMs = 3000;

    /**
     * Command to perform on the browser object
     * @type {String}
     */
    let command = 'waitForExist';

    /**
     * Boolean interpretation of the false state
     * @type {Boolean}
     */
    let boolFalseState = false;

    browser[command](elem, intMs, boolFalseState);
};
