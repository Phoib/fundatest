/**
 * Check the given property of the given element
 * @param  {String}   elem          Element selector
 * @param  {String}   falseCase     Whether to check if the value of the
 *                                  attribute matches or not
 * @param  {String}   expectedValue The value to match against
 */
module.exports = (elem, falseCase, expectedValue) => {
    /**
     * The name of the attribute to check
     * @type {String}
     */
    let attrName = 'value';

    /**
     * The command to use for fetching the expected value
     * @type {String}
     */
    let command = 'getAttribute';

    /**
     * The label to identify the attribute by
     * @type {String}
     */
    let attrType = 'Attribute';

    /**
     * The actual attribute value
     * @type {Mixed}
     */
    let attributeValue = browser[command](elem, attrName);

    if (falseCase) {
        expect(attributeValue).to.not
            .equal(
                expectedValue,
                `${attrType}: ${attrName} of element "${elem}" should not contain ` +
                `"${attributeValue}"`
            );
    } else {
        expect(attributeValue).to
            .equal(
                expectedValue,
                `${attrType}: ${attrName} of element "${elem}" should contain ` +
                `"${attributeValue}", but "${expectedValue}"`
            );
    }
};
