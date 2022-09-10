import { AlgamoneyUiPage } from "./app.po";
import { browser, logging } from "protractor";

describe("algamoney-ui App", () => {
  let page: AlgamoneyUiPage;

  beforeEach(() => {
    page = new AlgamoneyUiPage();
  });

  it("should display welcome message", () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual("algamoney-ui app is running!");
  });

  afterEach(async () => {
    // Assert that there are no errors emitted from the browser
    const logs = await browser.manage().logs().get(logging.Type.BROWSER);
    expect(logs).not.toContain(
      jasmine.objectContaining({
        level: logging.Level.SEVERE,
      } as logging.Entry)
    );
  });
});
