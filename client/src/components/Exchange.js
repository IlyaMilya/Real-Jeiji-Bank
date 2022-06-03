import './accounts.css'
import { Link } from 'react-router-dom'
import { useState } from 'react'
import Currency from './Currency'

const Exchange = () => {
const data = [{name: "doge", price: 1, img: "https://e7.pngegg.com/pngimages/305/230/png-clipart-shiba-inu-dogecoin-akita-cryptocurrency-bitcoin-mammal-cat-like-mammal.png"},
            {name: "btc", price: 30000, img: "https://e7.pngegg.com/pngimages/261/204/png-clipart-bitcoin-bitcoin.png"},
            {name: "eth", price: 2900, img: "https://e7.pngegg.com/pngimages/221/722/png-clipart-ethereum-classic-cryptocurrency-litecoin-computer-icons-bitcoin-blue-company.png"}
           ]

const [currencyList, setCurrencyList] = useState(data)
//  setCurrencyList(data)



  return (
    <div>
      <div className="account-container">
        <h1>
          <Link to="/accounts">
            <button className='back-btn'>Back to Accounts</button>
          </Link>
          <span className="account-header">{"Jacky"}'s Exchange Account</span>
          <span className='avatar'> <img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/unknown-512.png" className='avatar-img' /> </span>
        </h1>
      </div>

      <div className='currency-container'>
        {
          currencyList.map((currency) => {
            return(
              <Currency currency={currency}/>
            )
          })
        }
      </div>
    </div>
  );
}

export default Exchange;