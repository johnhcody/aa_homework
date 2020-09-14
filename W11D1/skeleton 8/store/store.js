import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import rootReducer from '../reducers/root_reducer';

const configureStore = () => {
    return createStore(rootReducer, applyMiddleware(thunk));
};

export default configureStore;



// import { createStore } from 'redux';
// import RootReducer from '../reducers/root_reducer';

// const configureStore = () => {
//     return createStore(RootReducer);
// };

// export default configureStore;