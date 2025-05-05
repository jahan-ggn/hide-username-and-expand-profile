import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
    const controller = api.container.lookup("controller:user");

    if (controller && controller.get("collapsedInfo")) {
      controller.set("forceExpand", true);
    }
});
