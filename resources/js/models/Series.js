class Series {
    static all(then) {
        return axios.get('/series').then(({ data }) => then(data));
    }
}

export default Series;
