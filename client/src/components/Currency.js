import './accounts.css';
import React from 'react';


const Currency = ({currency}) => {
    console.log(currency)
    return (
        <div>
            <div className='currency'>
            <p>Name: {currency.name}</p>
            <div>
                <img src = {currency.image} className="curr-img" alt="ss"/>
                {console.log(currency.image)}
            </div>
            <p>Price: {currency.price}</p>
            <button className="delete-currency">Delete</button>
            </div>
        </div>
    );
}

export default Currency;