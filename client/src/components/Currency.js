import './accounts.css';
import React from 'react'

const Currency = ({currency}) => {
    return (
        <div>
            <div className='currency'>
            <p>Name: {currency.name}</p>
            <img className='curr-img' src={currency.img} />
            <p>Price: {currency.price}</p>
            <button className="delete-currency">Delete</button>
            </div>
        </div>
    );
}

export default Currency;