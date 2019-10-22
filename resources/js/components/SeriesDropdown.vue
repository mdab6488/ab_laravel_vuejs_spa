<template>
    <div 
        @mouseover="active = true"
        @mouseout="active = false">
        <router-link tag="li" to="/mega_menus_on_to_one_relationship">
            <a class="navbar-item">Mega Menu</a>
        </router-link>
        <portal to="nav-after">
            <div class="megaMenuOneToOne"
                v-show="active"
                @mouseover="active = true"
                @mouseout="active = false">
                <div class="container">
                    <div class="columns">
                        <div class="column is-one-fifths left">
                            <ul>
                                <li 
                                    :class="selected === skill ? 'active' : 'inactive'"
                                    v-for="skill in skills" 
                                    v-text="skill"
                                    @mouseover="ShowSkill(skill)"></li>
                            </ul>
                        </div>
                        <div class="column is-four-fifths right">
                            <ul>
                                <li 
                                    v-for="item in seriesList"
                                    v-if="selected === item.series">
                                    <a :href="`/series/`+item.slug" 
                                        v-text="item.title"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </portal>
    </div>
</template>

<script>
    import Series from '../models/Series';

    export default {
        data() {
            return {
                active: false,
                selected: "PHP",
                series: [],
            }
        },

        created() {
             //fire of an ajax request
            Series.all(series => this.series = series);
        },

        computed: {
            skills() {
                return ['PHP', 'Laravel', 'Testing', 'Vue', 'Tooling'];
            },

            seriesList() {
                // return this.series[this.selected];
                return this.series;
            }
        },

        methods: {
            ShowSkill(name) {
                this.selected = name;
            }
        },
    }
</script>