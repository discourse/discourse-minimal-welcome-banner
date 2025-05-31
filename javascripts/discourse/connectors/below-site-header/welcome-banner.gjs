import Component from "@ember/component";
import { classNames } from "@ember-decorators/component";
import MinimalWelcomeBanner from "../../components/minimal-welcome-banner";

@classNames("below-site-header-outlet", "welcome-banner")
export default class WelcomeBanner extends Component {
  <template><MinimalWelcomeBanner /></template>
}
