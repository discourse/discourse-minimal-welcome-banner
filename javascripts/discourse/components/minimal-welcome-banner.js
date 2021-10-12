import Component from "@ember/component";
import discourseComputed from "discourse-common/utils/decorators";
import { getOwner } from "discourse-common/lib/get-owner";
import { inject as service } from "@ember/service";
import { defaultHomepage } from "discourse/lib/utilities";

export default Component.extend({
  tagName: "",
  router: service(),

  init() {
    this._super(...arguments);
  },

  actions: {},

  @discourseComputed("router.currentRouteName", "router.currentURL")
  shouldDisplay(currentRouteName, currentURL) {
    return currentRouteName == `discovery.${defaultHomepage()}`;
  },
});
