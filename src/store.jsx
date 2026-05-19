import { configureStore, createSlice } from '@reduxjs/toolkit';
let cart = createSlice({
    name: 'cart',
    initialState: [
        {
            id: 22,
            pro_num: '"180308",',
            src: "/img/detail/180308_1.avif",
            name: "In the Milky Lake Thinking One_나라 요시토모_굿즈",
            price: "180,000",
            count: 1,
        },
    ],
    reducers: {
        addCount(state, action) {
            let num = state.findIndex((a) => a.id === action.payload);
            console.log(num);
            state[num].count++;
        },
        decreaseCount(state, action) {
            let num = state.findIndex((a) => a.id === action.payload);
            console.log(num);
            if (state[num].count > 1) {
                state[num].count--;
            }
            else if (state[num].count === 1) {
                alert('최소 수량입니다.');
            }
        },
        addItem(state, action) {
            let num = state.findIndex((a) => a.id === action.payload.id);
            if (num !== -1) {
                state[num].count++;
            }
            else {
                state.push(action.payload);
            }
        },
        deleteItem(state, action) {
            let num = state.findIndex((a) => a.id === action.payload);
            state.splice(num, 1);
        },
        sortName(state) {
            state.sort((a, b) => (a.name > b.name ? 1 : -1));
        },
    },
});
export const { addCount, decreaseCount, addItem, deleteItem, sortName } = cart.actions;
export default configureStore({
    reducer: {
        cart: cart.reducer,
    },
});
