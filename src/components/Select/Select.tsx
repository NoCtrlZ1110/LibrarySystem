import React from "react";
import "./Select.css";
import { Link } from "react-router-dom";

export const Select: React.FC<any> = ({ routes }) => {
  return (
    <div>
      <div className="container">
        <div className="row">
          <div className="col-md-12  white-text text-center mx-4">
            <br />
            <br />
            <h1 className="font-weight-bold mb-0 pt-md-5 pt-5 mt-5 my-4">
              Chọn Chức Năng
              <br />
            </h1>
            <br />
            <br />
            <div className="row">
              <div className="col-md-2"></div>
              <div className="col">
                <div className="card col">
                  <Link className="btn btn-success m-3 btn-lg" to="/employee/">
                    <strong>Chức năng A</strong>
                  </Link>
                </div>
              </div>
              <div className="col ">
                <div className="card col">
                  <Link className="btn btn-success m-3 btn-lg" to="/employer/">
                    <strong>Chức năng B</strong>
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

// import { RouteWithSubRoutes } from "../../AppRouter";
/* <Switch>
{routes.map((route: any, i: any) => (
  <RouteWithSubRoutes key={i} {...route} />
  ))}
  // Router Outlet!
  */
