class Reviews {
    static all(then) {
        return axios.get('/reviews').then(({ data }) => then(data));
    }
}

export default Reviews;
