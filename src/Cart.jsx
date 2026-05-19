import { jsx as _jsx, jsxs as _jsxs, Fragment as _Fragment } from "react/jsx-runtime";
import { Table } from 'react-bootstrap';
import { useDispatch, useSelector } from 'react-redux';
import { addCount, decreaseCount, deleteItem, sortName } from './store';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faPlus, faMinus } from '@fortawesome/free-solid-svg-icons';
export const getTotalCount = (state) => {
    return state.cart.length;
};
export const Cart = () => {
    const state = useSelector((state) => state);
    const dispatch = useDispatch();
    const totalCount = getTotalCount(state);
    const smallProdcuctStyle = {
        border: '1px solid #ddd',
        width: '100px',
        height: '80px',
        cursor: 'pointer',
    };
    return (_jsxs(_Fragment, { children: [_jsx("h5", { style: { padding: '50px', fontSize: "30px" }, children: "SHOPPING CART" }), _jsxs(Table, { children: [_jsx("thead", { children: _jsxs("tr", { children: [_jsx("th", { children: "\uC0C1\uD488 \uBC88\uD638" }), _jsx("th", { children: "\uC0C1\uD488\uC774\uBBF8\uC9C0" }), _jsx("th", { children: "\uC0C1\uD488\uBA85" }), _jsx("th", { children: "\uC0C1\uD488 \uAE08\uC561" }), _jsx("th", { children: "\uC218\uB7C9" }), _jsx("th", { children: "\uCD1D \uACB0\uC81C\uAE08\uC561" }), _jsx("th", { children: "\uBCC0\uACBD" })] }) }), _jsx("tbody", { children: state.cart.map((a, i) => _jsxs("tr", { children: [_jsx("td", { children: state.cart[i].pro_num }), _jsx("td", { children: _jsx(Link, { to: `/detail/${state.cart[i].id}`, children: _jsx("img", { src: '/casamia/' + state.cart[i].src, style: smallProdcuctStyle }) }) }), _jsx("td", { children: state.cart[i].name }), _jsx("td", { children: state.cart[i].price }), _jsx("td", { children: _jsxs("div", { className: "pro_amount", style: {}, children: [_jsx("button", { onClick: () => {
                                                    dispatch(decreaseCount(state.cart[i].id));
                                                }, children: _jsx(FontAwesomeIcon, { icon: faMinus, size: "2xs" }) }), _jsxs("span", { children: [" ", state.cart[i].count] }), _jsx("button", { onClick: () => {
                                                    dispatch(addCount(state.cart[i].id));
                                                }, children: _jsx(FontAwesomeIcon, { icon: faPlus, size: "2xs" }) })] }) }), _jsx("td", { children: (() => {
                                        let totalPrice = state.cart[i].count * parseInt(state.cart[i].price.replace(/,/g, ''), 10);
                                        let formattedPrice = totalPrice.toLocaleString();
                                        return formattedPrice;
                                    })() }), _jsx("td", { children: _jsx("button", { className: "delete_btn", onClick: () => {
                                            dispatch(deleteItem(state.cart[i].id));
                                        }, children: "\uC0AD\uC81C" }) })] }, i)) })] }), _jsxs("div", { className: "total", children: [_jsx("button", { className: "sort_btn", onClick: () => {
                            dispatch(sortName());
                        }, children: "\uC774\uB984\uC21C \uC815\uB82C" }), ' ', _jsx("button", { className: "buy_now", children: "\uACB0\uC81C\uD558\uAE30" })] })] }));
};
