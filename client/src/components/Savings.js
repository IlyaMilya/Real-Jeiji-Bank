import '.components/accounts.css';
import { Link } from 'react-router-dom'

const Savings = () => {
  return (
    <div>
    <div className="account-container">
        <h1>
            <Link to="/home">
                <button className='back-btn'>Back to Accounts</button>
            </Link>
            <span className="account-header">{"Jacky"}'s Savings Account</span>
            <span className='avatar'> <img src="https://cdn1.iconfinder.com/data/icons/user-pictures/100/unknown-512.png" className='avatar-img' /> </span>
        </h1>
    </div>
    <div className='balance'>
        <p>Current Balance</p>
        <p>$80</p>
        {/* <p> { User.Savings.balance } </p> */}
    </div>
</div>
  );
}

export default Savings;