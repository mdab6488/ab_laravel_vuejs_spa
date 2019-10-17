class Status {
    static all(then) {
        return axios.get('/statues').then(({ data }) => then(data));
    }
}

export default Status;
