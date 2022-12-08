import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { getGreetings } from './reducers/greetings'

const Greeting = () => {
  const dispatch = useDispatch();
  const greeting = useSelector((state) => state.greetings.greetings);
  useEffect(() => {
    if (!greeting.length) dispatch(getGreetings());
    console.log(greeting)
  }, []);

  return (
    <div>
      <h2 className="greeting">{greeting}</h2>
    </div>
  )
};

export default Greeting;