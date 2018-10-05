/**
 * Check if the given element matches the saved screenshot
 * @param  {String}  element  Element selector
 * @param  {String}  fileName Name of the saved screenshot
 */
module.exports = (element, fileName) => {
    /**
     * The location of the baseline screenshots
     * @type {String}
     */
    let folderBase = './tests/baselineScreenshots';

    /**
     * The location of the generated screenshots
     * @type {String}
     */
    let folderCompare = './tests/compareScreenshots';

    /**
     * The location of the original screenshot
     * @type {String}
     */
    const fileNameSource = `${folderBase}/${fileName}`;

    /**
     * The location of the generated screenshot
     * @type {String}
     */
    const fileNameCompare = `${folderCompare}/${fileName.replace('.png', '-compare.png')}`;

    browser.waitForExist(element);
    const screenshotPng = browser.elementIdScreenshot(element);
    const screenshot = Buffer.from(screenshotPng.value, 'base64');

    /**
     * When writing these tests, I want to create the screenshot if it did not exist yet. This fails the test.
     */
    if (!fs.existsSync(fileNameSource)) {
        fs.writeFileSync(fileNameSource, screenshot);
        assert(false, `Screenshot did not exist and was created; please check: "${fileNameSource}"`);
    } else {
        fs.writeFileSync(fileNameCompare, screenshot);
        (screenshot.equals(fs.readFileSync(fileNameSource))).should.equal(true);
    }
};
