import Component from "@ember/component";
import { service } from "@ember/service";
import { defaultHomepage } from "discourse/lib/utilities";
import discourseComputed from "discourse-common/utils/decorators";

export default Component.extend({
  tagName: "",
  router: service(),

  init() {
    this._super(...arguments);
  },

  actions: {},

  @discourseComputed("router.currentRouteName", "router.currentURL")
  shouldDisplay(currentRouteName) {
    return currentRouteName === `discovery.${defaultHomepage()}`;
  },
});
