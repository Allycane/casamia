import { jsx as _jsx, jsxs as _jsxs, Fragment as _Fragment } from "react/jsx-runtime";
import React from "react";
import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { Link } from "react-router-dom";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import { Navigation } from "swiper";
import Tab from "react-bootstrap/Tab";
import Tabs from "react-bootstrap/Tabs";
import { addItem } from "./store";
import { useDispatch } from "react-redux";
import data1 from "./data1";
import { theme1 } from "./data3";
import { mozi } from "./data4";
import data5 from "./data5";
import data6 from "./data6";
import data7 from "./data7";
import data8 from "./data8";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faPlus, faMinus } from '@fortawesome/free-solid-svg-icons';
function Detail() {
    window.scrollTo(0, 0);
    let { id } = useParams();
    let product = [...data1, ...theme1, ...mozi, ...data5, ...data6, ...data7, ...data8];
    let selproduct = product.find((x) => x.id === Number(id));
    let dispatch = useDispatch();
    let [amountPro, setAmountPro] = useState(1);
    const [leftHeight, setLeftHeight] = useState(0);
    const [rightHeight, setRightHeight] = useState(0);
    useEffect(() => {
        const leftBox = document.getElementById("leftBox");
        const rightBox = document.getElementById("rightBox");
        if (leftBox && rightBox) {
            setLeftHeight(leftBox.clientHeight);
            setRightHeight(leftBox.clientHeight);
        }
    }, []);
    let category = selproduct?.category || [];
    let pics = selproduct?.img || [];
    let tag = selproduct?.tag || [];
    let contentImg = selproduct?.detailImg || [];
    let pro_info = selproduct?.pro_info || [];
    let refund_info = selproduct?.refund_info || [];
    let final = selproduct?.final || "";
    let totalPrice = parseInt(final.replace(",", ""), 10) * amountPro;
    let totlaPrice2 = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return (_jsxs(_Fragment, { children: [_jsx("ul", { className: "catalog_nav", children: category.map((ele, i) => {
                    return (_jsx("li", { children: _jsx(Link, { to: "/", children: ele }) }));
                }) }), _jsxs("div", { className: "detail_box", children: [_jsxs("div", { id: "leftBox", className: "detail_left_box", children: [_jsx("h3", { children: selproduct?.title }), _jsxs("div", { children: [_jsx("div", { className: "detail_big_pic", children: _jsx(Swiper, { navigation: true, modules: [Navigation], className: "mySwiper3", children: pics.map((ele, i) => {
                                                return (_jsx(SwiperSlide, { children: _jsx("img", { src: '/casamia/' + ele }) }));
                                            }) }) }), _jsx("ul", { className: "detail_small_pic", children: pics.map((ele, i) => {
                                            return (_jsx("li", { children: _jsx("img", { src: '/casamia/' + ele }) }));
                                        }) }), _jsx("div", { className: "hashtag", children: tag.map((ele, i) => {
                                            return _jsx("span", { children: ele });
                                        }) })] }), _jsxs(Tabs, { defaultActiveKey: "home", id: "justify-tab-example", className: "mb-3", justify: true, children: [_jsx(Tab, { eventKey: "home", title: "\uC0C1\uD488\uC815\uBCF4", children: _jsxs("div", { className: "tab_content", children: [_jsx("div", { className: "coupon_banner", children: _jsx("img", { src: "/casamia/img/detail/coupon_banner.avif" }) }), _jsx("div", { children: contentImg.map((ele, i) => {
                                                        return _jsx("img", { src: '/casamia/' + ele, className: "detailImg" });
                                                    }) }), _jsx("h2", { children: "\uC81C\uD488\uC815\uBCF4" }), _jsx("div", { className: "pro_info", children: _jsx("table", { children: pro_info.map((ele, i) => {
                                                            return (_jsxs("tr", { children: [_jsx("th", { children: ele[0] }), _jsx("td", { children: ele[1] })] }));
                                                        }) }) })] }) }), _jsx(Tab, { eventKey: "profile", title: "\uC0C1\uD488\uB9AC\uBDF0", children: _jsxs("div", { className: "tab_content", children: [_jsx("div", { className: "title_info", children: _jsx("h3", { children: "\uC0C1\uD488 \uB9AC\uBDF0" }) }), _jsxs("ul", { className: "qna", children: [_jsxs("li", { children: [_jsx("img", { src: "/casamia/img/detail/ico_review1.png" }), _jsx("span", { children: "0" }), _jsx("img", { src: "/casamia/img/detail/ico_review2.png" }), _jsx("span", { children: "0" })] }), _jsx("li", { children: _jsx("button", { children: "\uCD5C\uC2E0\uC21C" }) }), _jsx("li", { children: _jsx("button", { children: "\uC778\uAE30\uC21C" }) })] }), _jsx("h4", { children: "\uC0C1\uD488 \uB9AC\uBDF0\uAC00 \uC5C6\uC2B5\uB2C8\uB2E4." })] }) }), _jsx(Tab, { eventKey: "longer-tab", title: "Q&A", children: _jsxs("div", { className: "tab_content", children: [_jsxs("div", { className: "title_info", children: [_jsx("h3", { children: "\uBB38\uC758\uD558\uAE30" }), _jsx("button", { children: "\uBB38\uC758\uD558\uAE30" })] }), _jsxs("ul", { className: "qna", children: [_jsx("li", { children: "\uBB38\uC758\uB0B4\uC6A9" }), _jsx("li", { children: "\uB2F5\uBCC0\uC0C1\uD0DC" }), _jsx("li", { children: "\uC791\uC131\uC77C\uC790" })] }), _jsx("h4", { children: "\uB4F1\uB85D\uB41C Q&A\uAC00 \uC5C6\uC2B5\uB2C8\uB2E4." })] }) }), _jsx(Tab, { eventKey: "contact", title: "\uBC30\uC1A1/\uAD50\uD658/\uD658\uBD88 \uC548\uB0B4", children: _jsxs("div", { className: "tab_content decline", children: [_jsx("div", { className: "title_info", children: _jsx("h3", { children: "\uC0AC\uC5C5\uC790 \uC815\uBCF4 \uC548\uB0B4" }) }), _jsx("div", { className: "pro_info", children: _jsx("table", { children: refund_info.map((ele, i) => {
                                                            return (_jsxs("tr", { children: [_jsx("th", { children: ele[0] }), _jsx("td", { children: ele[1] })] }));
                                                        }) }) }), _jsx("div", { className: "title_info", children: _jsx("h3", { children: "\uBC30\uC1A1\uC548\uB0B4" }) }), _jsx("img", { src: "/casamia/img/detail/delivery_info.png" }), _jsx("div", { className: "title_info", children: _jsx("h3", { children: "\uAD50\uD658/\uBC18\uD488 \uC548\uB0B4" }) }), _jsx(DeliveryInfo, {})] }) })] })] }), _jsxs("div", { id: "rightBox", className: "detail_right_box", style: { height: rightHeight }, children: [_jsxs("div", { className: "pro_price", children: [_jsx("p", { className: "b_name", style: { fontSize: "16px" }, children: selproduct?.brand }), _jsx("p", { className: "orig_price", style: { fontSize: "16px" }, children: selproduct?.origin }), _jsx("p", { className: "discount", style: { fontSize: "32px" }, children: selproduct?.discount }), _jsxs("h3", { className: "fn_price", style: { fontSize: "32px" }, children: [selproduct?.final, "\uC6D0"] })] }), _jsxs("div", { className: "pro_delivery", children: [_jsx("p", {}), _jsxs("table", { children: [_jsxs("tr", { children: [_jsx("td", { children: "\uC81C\uD488\uBC88\uD638" }), _jsx("td", { children: selproduct?.pro_num })] }), _jsxs("tr", { children: [_jsx("td", { children: "\uBC30\uC1A1\uC815\uBCF4" }), _jsx("td", { children: _jsxs("ul", { children: [_jsx("li", { children: _jsx("strong", { children: "\uD3C9\uADE0\uBC30\uC1A1\uC77C \uC624\uD6C4 1\uC2DC \uC804\uAE4C\uC9C0 \uC8FC\uBB38 \uD655\uC778 \uC2DC \uB2F9\uC77C \uCD9C\uACE0" }) }), _jsx("li", { children: selproduct?.fee }), _jsxs("li", { children: ["\uBC30\uC1A1\uBD88\uAC00\uC9C0\uC5ED", _jsx("button", { children: "i" })] })] }) })] })] })] }), _jsxs("div", { className: "pro_buy", children: [_jsxs("div", { className: "pro_option", children: [_jsx("p", { children: "\uC218\uB7C9" }), _jsxs("span", { className: "orig_price", children: [" ", selproduct?.origin] }), _jsx("span", { children: selproduct?.final }), _jsxs("div", { className: "pro_amount", style: { float: "right" }, children: [_jsx("button", { onClick: () => {
                                                            setAmountPro(amountPro - 1);
                                                            if (amountPro <= 1) {
                                                                alert("최소 수량입니다");
                                                                setAmountPro(1);
                                                            }
                                                        }, children: _jsx(FontAwesomeIcon, { icon: faMinus, size: "2xs" }) }), _jsx("span", { children: amountPro }), _jsx("button", { onClick: () => {
                                                            setAmountPro(amountPro + 1);
                                                        }, children: _jsx(FontAwesomeIcon, { icon: faPlus, size: "2xs" }) })] })] }), _jsxs("h5", { children: [totlaPrice2, "\uC6D0"] }), _jsx("p", { children: "*\uCD94\uAC00\uCFE0\uD3F0\uC801\uC6A9\uAC00\uACA9\uC740 \uC8FC\uBB38/\uACB0\uC81C \uD398\uC774\uC9C0\uC5D0\uC11C \uD655\uC778\uD558\uC2E4\uC218 \uC788\uC2B5\uB2C8\uB2E4." }), _jsx("button", { className: "put_cart", onClick: () => {
                                            dispatch(addItem({
                                                id: selproduct?.id || 0,
                                                pro_num: selproduct?.pro_num || "",
                                                src: selproduct?.src || "",
                                                name: selproduct?.title || "",
                                                price: selproduct?.final || "",
                                                count: amountPro || 0,
                                            }));
                                        }, children: "\uC7A5\uBC14\uAD6C\uB2C8" }), _jsx(Link, { to: "/cart", children: _jsx("button", { className: "buy_now", onClick: () => {
                                                dispatch(addItem({
                                                    id: selproduct?.id || 0,
                                                    pro_num: selproduct?.pro_num || "",
                                                    src: selproduct?.src || "",
                                                    name: selproduct?.title || "",
                                                    price: selproduct?.final || "",
                                                    count: amountPro || 0,
                                                }));
                                            }, children: "\uAD6C\uB9E4\uD558\uAE30" }) })] })] })] })] }));
}
function DeliveryInfo() {
    return (_jsxs(_Fragment, { children: [_jsx("p", { children: "\uB2E8\uC21C\uBCC0\uC2EC \uBC0F \uC0AC\uC774\uC988/\uC0C9\uC0C1 \uBD88\uB9CC\uC5D0 \uAD00\uB828\uB41C \uAD50\uD658/\uBC18\uD488 \uC2E0\uCCAD\uC740 \uBC30\uC1A1\uC644\uB8CC \uD6C4 7\uC77C \uC774\uB0B4\uC5D0 \uAC00\uB2A5\uD569\uB2C8\uB2E4." }), _jsx("p", { children: "\uC0C1\uD488\uC774 \uD45C\uAE30/\uAD11\uACE0\uB0B4\uC6A9\uACFC \uB2E4\uB974\uAC70\uB098 \uACC4\uC57D\uB0B4\uC6A9\uACFC \uB2E4\uB978 \uACBD\uC6B0 \uC0C1\uD488\uC744 \uBC1B\uC73C\uC2E0 \uB0A0\uBD80\uD130 3\uAC1C\uC6D4 \uC774\uB0B4, \uB610\uB294 \uC0AC\uC2E4\uC744 \uC54C\uAC8C\uB41C \uB0A0(\uC54C \uC218 \uC788\uC5C8\uB358 \uB0A0)\uBD80\uD130 30\uC77C \uC774\uB0B4\uC5D0 \uC2E0\uCCAD \uAC00\uB2A5\uD569\uB2C8\uB2E4." }), _jsx("h2", { children: "\uAD50\uD658/\uBC18\uD488 \uD68C\uC218(\uBC30\uC1A1)\uBE44\uC6A9" }), _jsx("p", { children: "\uC0C1\uD488\uC758 \uBD88\uB7C9/\uD558\uC790 \uB610\uB294 \uD45C\uC2DC\uAD11\uACE0 \uBC0F \uACC4\uC57D \uB0B4\uC6A9\uACFC \uB2E4\uB978 \uACBD\uC6B0 \uD574\uB2F9 \uC0C1\uD488\uC758 \uD68C\uC218(\uBC30\uC1A1)\uBE44\uC6A9\uC740 \uBB34\uB8CC\uC774\uB098, \uACE0\uAC1D\uB2D8\uC758 \uB2E8\uC21C\uBCC0\uC2EC \uBC0F \uC0AC\uC774\uC988/\uC0C9\uC0C1 \uBD88\uB9CC\uC5D0 \uAD00\uB828\uB41C \uAD50\uD658/\uBC18\uD488\uC758 \uACBD\uC6B0 \uACE0\uAC1D\uB2D8 \uBD80\uB2F4\uC785\uB2C8\uB2E4." }), _jsx("p", { children: "\uAC00\uAD6C \uC0C1\uD488\uC758 \uACBD\uC6B0 \uC18C\uBE44\uC790\uBD84\uC7C1\uD574\uACB0\uAE30\uC900\uC5D0 \uB530\uB978 \uBCC4\uB3C4\uC758 \uC704\uC57D\uAE08\uC774 \uBD80\uACFC\uB420 \uC218 \uC788\uC2B5\uB2C8\uB2E4." }), _jsx("h2", { children: "\uAD50\uD658/\uBC18\uD488 \uBD88\uAC00 \uC548\uB0B4" }), _jsx("p", { children: "\uC804\uC790\uC0C1\uAC70\uB798 \uB4F1\uC5D0\uC11C \uC18C\uBE44\uC790\uBCF4\uD638\uC5D0 \uAD00\uD55C \uBC95\uB960\uC5D0 \uB530\uB77C \uB2E4\uC74C\uC758 \uACBD\uC6B0 \uCCAD\uC57D\uCCA0\uD68C\uAC00 \uC81C\uD55C\uB420 \uC218 \uC788\uC2B5\uB2C8\uB2E4." }), _jsxs("ul", { className: "decline_info", children: [_jsx("li", { children: "\uACE0\uAC1D\uB2D8\uC774 \uC0C1\uD488 \uD3EC\uC7A5\uC744 \uAC1C\uBD09\uD558\uC5EC \uC0AC\uC6A9 \uB610\uB294 \uC124\uCE58 \uC644\uB8CC\uB418\uC5B4 \uC0C1\uD488\uC758 \uAC00\uCE58\uAC00 \uD6FC\uC190\uB41C \uACBD\uC6B0 (\uB2E8, \uB0B4\uC6A9 \uD655\uC778\uC744 \uC704\uD55C \uD3EC\uC7A5 \uAC1C\uBD09\uC758 \uACBD\uC6B0\uB294 \uC608\uC678)" }), _jsx("li", { children: "\uACE0\uAC1D\uB2D8\uC758 \uB2E8\uC21C\uBCC0\uC2EC\uC73C\uB85C \uC778\uD55C \uAD50\uD658/\uBC18\uD488 \uC2E0\uCCAD\uC774 \uC0C1\uD488 \uC218\uB839\uD55C \uB0A0\uB85C\uBD80\uD130 7\uC77C\uC774 \uACBD\uACFC\uD55C \uACBD\uC6B0" }), _jsx("li", { children: " \uACE0\uAC1D\uB2D8\uC758 \uC0AC\uC6A9 \uB610\uB294 \uC77C\uBD80 \uC18C\uBE44\uC5D0 \uC758\uD574 \uC0C1\uD488\uC758 \uAC00\uCE58\uAC00 \uD6FC\uC190\uB41C \uACBD\uC6B0" }), _jsx("li", { children: "\uC2DC\uAC04 \uACBD\uACFC\uC5D0 \uB530\uB77C \uC0C1\uD488 \uB4F1\uC758 \uAC00\uCE58\uAC00 \uD604\uC800\uD788 \uAC10\uC18C\uD558\uC5EC \uC7AC\uD310\uB9E4\uAC00 \uBD88\uAC00\uB2A5\uD55C \uACBD\uC6B0" }), _jsx("li", { children: "\uBCF5\uC81C\uAC00 \uAC00\uB2A5\uD55C \uC7AC\uD654 \uB4F1\uC758 \uD3EC\uC7A5\uC744 \uD6FC\uC190\uD55C \uACBD\uC6B0 (DVD, CD, \uB3C4\uC11C \uB4F1 \uBCF5\uC81C \uAC00\uB2A5\uD55C \uC0C1\uD488)" }), _jsx("li", { children: "\uACE0\uAC1D\uB2D8\uC774 \uC774\uC0C1 \uC5EC\uBD80\uB97C \uD655\uC778\uD55C \uD6C4 \uC124\uCE58\uAC00 \uC644\uB8CC\uB41C \uC0C1\uD488\uC758 \uACBD\uC6B0 (\uAC00\uC804, \uAC00\uAD6C, \uD5EC\uC2A4\uAE30\uAD6C \uB4F1)" }), _jsx("li", { children: "\uACE0\uAC1D\uB2D8\uC758 \uC694\uCCAD\uC5D0 \uB530\uB77C \uAC1C\uBCC4\uC801\uC73C\uB85C \uC8FC\uBB38\uC81C\uC791\uB418\uB294 \uC0C1\uD488\uC73C\uB85C \uC7AC\uD310\uB9E4\uAC00 \uBD88\uAC00\uB2A5\uD55C \uACBD\uC6B0 (\uC774\uB2C8\uC15C \uD45C\uC2DC\uC0C1\uD488, \uC0AC\uC774\uC988 \uB9DE\uCDA4\uC0C1\uD488 \uB4F1)" }), _jsx("li", { children: "\uAD6C\uB9E4\uD55C \uC0C1\uD488\uC758 \uAD6C\uC131\uD488\uC774 \uB204\uB77D\uB41C \uACBD\uC6B0 (\uD654\uC7A5\uD488 \uC138\uD2B8, \uC758\uB958\uBD80\uCC29 \uC545\uC138\uC11C\uB9AC, \uAC00\uC804\uC81C\uD488 \uBD80\uC18D\uD488, \uC0AC\uC740\uD488 \uB4F1)" }), _jsx("li", { children: "\uAE30\uD0C0, \uC0C1\uD488\uC758 \uAD50\uD658, \uD658\uBD88 \uBC0F \uC0C1\uD488 \uACB0\uD568 \uB4F1\uC758 \uBCF4\uC0C1\uC740 \uC18C\uBE44\uC790\uBD84\uC7C1\uD574\uACB0\uAE30\uC900 (\uACF5\uC815\uAC70\uB798\uC704\uC6D0\uD68C \uACE0\uC2DC) \uC5D0 \uC758\uD568" })] }), _jsx("p", { children: "* \uC790\uC138\uD55C \uB0B4\uC6A9\uC740 \uACE0\uAC1D\uC13C\uD130\uB85C \uBB38\uC758 \uBD80\uD0C1\uB4DC\uB9BD\uB2C8\uB2E4. (A/S \uBB38\uC758\uB294 \uC81C\uC870\uC0AC\uB85C \uBA3C\uC800 \uBB38\uC758 \uC2DC \uBE60\uB974\uAC8C \uCC98\uB9AC \uAC00\uB2A5\uD569\uB2C8\uB2E4.)" }), _jsx("p", { children: "* \uC804\uC790\uC0C1\uAC70\uB798 \uB4F1\uC5D0\uC11C\uC758 \uC18C\uBE44\uC790 \uBCF4\uD638\uC5D0 \uAD00\uD55C \uBC95\uB960\uC5D0 \uC758\uD55C \uBC18\uD488\uADDC\uC815\uC774 \uD611\uB825\uC0AC\uAC00 \uC0C1\uD488\uC0C1\uC138 \uD398\uC774\uC9C0 \uB4F1\uC5D0\uC11C \uAC1C\uBCC4\uC801\uC73C\uB85C \uACE0\uC9C0 \uB610\uB294 \uC9C0\uC815\uD55C \uBC18\uD488\uC870\uAC74\uBCF4\uB2E4 \uC6B0\uC120\uD569\uB2C8\uB2E4." })] }));
}
export default Detail;
