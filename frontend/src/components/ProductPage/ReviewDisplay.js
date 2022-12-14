import { useEffect, useState } from "react"
import ReactStars from "react-rating-stars-component";
import { useDispatch, useSelector } from "react-redux";
import edit from '../../images/edit.png'
import trash from '../../images/trash.png'
import { deleteReview, fetchReviews, updateReview } from '../../store/reviews';
import './ReviewSubmit.css'



const ReviewDisplay = ({review, productId}) => {
  const dispatch = useDispatch();
  const [title, setTitle] = useState(review.title)
  const [body, setBody] = useState(review.body)
  const [rating, setRating] = useState(review.rating)
  const [showUpdate, setShowUpdate] = useState(false)
  const [errors, setErrors] = useState([]);
  const user = useSelector(state => state.session.user)



  const handleDeleteReview = (review) => {
    if (user.id === review.userId) {
      dispatch(deleteReview(review.id))
    }
  }

  const handleShow = (e) => {
    e.preventDefault();
    if (user.id === review.userId){
      setShowUpdate(true)
    }
  }
  const starRating = {
    size: 35,
    count: 5,
    isHalf: false,
    value: rating,
    color: "grey",
    activeColor: "gold",
    onChange: newValue => {
      setRating(newValue);
    }
  };
  const handleBodyChange = (e) => setBody(e.currentTarget.value);

  const handleUpdateReview = (e) => {
    e.preventDefault()
    const updatedReview = {
      id: review.id,
      body: body,
      title: title,
      rating: rating,
      user_id: user.id,
      product_id: productId
    }

    setErrors([]);
    return dispatch(updateReview(updatedReview))
      .catch(async (res) => {
        let data;
        try {
          data = await res.clone().json();
        } catch {
            data = await res.text(); 
          }
          if (data?.errors) setErrors(data.errors);
          else if (data) setErrors([data]);
          else setErrors([res.statusText]);
        });
 
  }

  const toggleMenu = (user && user.id === review.userId) ? (
    <div>
      <img src={edit} height="24px" width="24px" onClick={handleShow} />
      <img src={trash} onClick={() => handleDeleteReview(review)} />
    </div>
  ) : (
    <div></div>
  )

  return showUpdate ? (
    <>
      <section className='individual_review_main_container'>
        <div className='stars_position_container'>
          <div>
            <div className='star_box_container'>
              <ReactStars {...starRating} />
            </div>
          </div>
        </div>
        <form onSubmit={handleUpdateReview}>
          <ul className="error_message">
            {errors.map(error => <li key={error}>{error}</li>)}
          </ul>
          <div className='review_author_container'>
            <input className='review_author_text' type="text" onChange={(e) => setTitle(e.target.value)} value={review.title}/>
          </div>                
          <div className="review_submit_body_container2">
            <div className='review_body_container2'>
            <textarea className="review_main_text" type='text' rows="4" cols="50"onChange={handleBodyChange} value={body}/>
            </div>
            <button class="review_button">Submit</button>
          </div>
        </form>
      </section>  
    </>
  ) : (
      <section className='individual_review_main_container'>
        <header className='container_for_stars'>
          <div className='star_box_container'>
            <img className={`stars_${review.rating}`} />
            {(user) ? (toggleMenu) : (
             <div> </div>
            )}
          </div>
        </header>
        <div className='review_body_container'>
          <div className='review_main_text'>{review.body}</div>
        </div>
        <div className='review_author_container'>
          <div className='review_author_text'>- {review.name}</div>
        </div>
      </section>
  )

}

export default ReviewDisplay;
