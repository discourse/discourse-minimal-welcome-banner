import Component from "@ember/component";
import { service } from "@ember/service";
import { tagName } from "@ember-decorators/component";
import discourseComputed from "discourse/lib/decorators";
import { defaultHomepage } from "discourse/lib/utilities";

@tagName("")
export default class MinimalWelcomeBanner extends Component {
  @service router;

  @discourseComputed("router.currentRouteName", "router.currentURL")
  shouldDisplay(currentRouteName) {
    return currentRouteName === `discovery.${defaultHomepage()}`;
  }

  <template>
    {{#if this.shouldDisplay}}
      {{#if settings.banner_headline}}
        <div
          class="minimal-welcome-banner
            {{if settings.banner_only_show_anon 'anon-only'}}"
        >
          <div class="wrap">
            <h1>{{settings.banner_headline}}</h1>
            {{#if settings.banner_subhead}}
              <h2>{{settings.banner_subhead}}</h2>
            {{/if}}
          </div>
        </div>
      {{/if}}
    {{/if}}
  </template>
}
