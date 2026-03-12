/* eslint-disable ember/no-classic-components */
import Component from "@ember/component";
import { computed } from "@ember/object";
import { service } from "@ember/service";
import { tagName } from "@ember-decorators/component";
import { defaultHomepage } from "discourse/lib/utilities";

@tagName("")
export default class MinimalWelcomeBanner extends Component {
  @service router;

  @computed("router.currentRouteName", "router.currentURL")
  get shouldDisplay() {
    return this.router?.currentRouteName === `discovery.${defaultHomepage()}`;
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
