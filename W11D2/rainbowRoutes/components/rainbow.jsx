import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Green from './green';
import Blue from './blue';
import Violet from './violet';

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        {/* Your links should go here */}
          <NavLink exact to="/red">Red</NavLink>
          <NavLink exact to="/red/orange">Add Orange</NavLink>
          <NavLink exact to="/red/yellow">Add Yellow</NavLink>
          <NavLink exact to="/green">Green</NavLink>
          <NavLink exact to="/blue">Blue</NavLink>
          <NavLink exact to="/blue/indigo">Add indigo</NavLink>
          <NavLink exact to="/violet">Violet</NavLink>
        <div id="rainbow">    
          <Route path="/red" component={Red} />
          <Route path="/red/orange" component={Red} />
          <Route path="/red/yellow" component={Red} />
          <Route path="/green" component={Green} />
          <Route path="/blue" component={Blue} />
          <Route path="/blue/indigo" component={Blue} />
          <Route path="/violet" component={Violet} />              
        </div>
      </div>
    );
  }
};

export default Rainbow;
