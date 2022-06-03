import './accounts.css';
import { Link } from 'react-router-dom'
import NavBar from './NavBar';

const Savings = () => {
  return (
    <div>
        <NavBar />
    <div className="account-container">
        <h1>
            <Link to="/">
                <button className='back-btn'>Sign out</button>
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