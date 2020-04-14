import React from "react";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import NavDropdown from "react-bootstrap/Navbar";
import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/Button";
import FormControl from "react-bootstrap/FormControl";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faSearch } from "@fortawesome/free-solid-svg-icons";

export class Navigator extends React.Component {
  render() {
    return (
      <Navbar expand="lg">
        <Navbar.Brand href="/" style={{ color: "white" }}>
          <strong>Library System</strong>
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="mr-auto">
            <Nav.Link href="/ " style={{ color: "white" }}>
              Home
            </Nav.Link>
            <Nav.Link href="/select/" style={{ color: "white" }}>
              Something Here
            </Nav.Link>
            <NavDropdown title="Dropdown" id="basic-nav-dropdown"></NavDropdown>
          </Nav>
          <Form inline>
            <FormControl type="text" placeholder="Search" className="mr-sm-2" />
            <Button className="btn btn-success">
              <FontAwesomeIcon icon={faSearch} />
            </Button>
          </Form>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}
