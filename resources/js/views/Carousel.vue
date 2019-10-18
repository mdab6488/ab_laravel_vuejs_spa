<template>
    <div class="margin-bottom">
        <section class="hero is-link is-medium">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <p class="title">
                        Carousal | Flickity
                    </p>
                </div>
            </div>
        </section>
        <carousal :autoplay="true">
            <img src="https://placeimg.com/640/480/any">
            <img src="https://placeimg.com/640/480/any?2">
            <img src="https://placeimg.com/640/480/any?3">
            <img src="https://placeimg.com/640/480/any?4">
            <img src="https://placeimg.com/640/480/any?5">
        </carousal>
    </div>
</template>
