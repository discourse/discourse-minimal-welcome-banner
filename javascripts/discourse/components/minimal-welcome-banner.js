import Component from "@ember/component";
import { service } from "@ember/service";
import { tagName } from "@ember-decorators/component";
import { defaultHomepage } from "discourse/lib/utilities";
import discourseComputed from "discourse-common/utils/decorators";

@tagName("")
export default class MinimalWelcomeBanner extends Component {
  @service router;

  @discourseComputed("router.currentRouteName", "router.currentURL")
  shouldDisplay(currentRouteName) {
    return currentRouteName === `discovery.${defaultHomepage()}`;
  }
}
