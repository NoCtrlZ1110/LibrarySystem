import React from "react";
import { Router, Switch, Route } from "react-router-dom";
import { Home } from "./components/Home/HomePage";
import { Select } from "./components/Select/Select";
import { NotFound } from "./components/NotFound/NotFound";
import { FeatureB } from "./components/FeatureB/FeatureB";
import { FeatureA } from "./components/FeatureA/FeatureA";
import history from "./services/history";

const routes = [
  {
    path: "/",
    component: Home,
    exact: true,
  },
  {
    path: "/select",
    component: Select,
    exact: true,
  },
  {
    path: "/employee",
    component: FeatureA,
    exact: true,
  },
  { path: "/employer", component: FeatureB },
  {
    path: "*",
    component: NotFound,
  },
];

export class AppRouter extends React.Component<{}> {
  render() {
    return (
      <Router history={history}>
        <Switch>
          {routes.map((route, i) => (
            <RouteWithSubRoutes key={i} {...route} />
          ))}
        </Switch>
      </Router>
    );
  }
}

export function RouteWithSubRoutes(route: any) {
  return (
    <Route
      path={route.path}
      render={(props) => (
        // pass the sub-routes down to keep nesting
        <route.component {...props} routes={route.routes} />
      )}
    />
  );
}
