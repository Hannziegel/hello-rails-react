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
    <div className="container mx-auto">
      <h2 className="text-3xl font-bold underline">{greeting}</h2>
    </div>
  )
};

export default Greeting;