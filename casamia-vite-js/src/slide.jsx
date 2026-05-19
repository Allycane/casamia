import { jsx as _jsx, jsxs as _jsxs, Fragment as _Fragment } from "react/jsx-runtime";
import { Link } from "react-router-dom";
import "./App.css";
import React, { Component } from "react";
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { Swiper, SwiperSlide } from "swiper/react";
import { roomImg } from "./data";
import "swiper/css";
import "swiper/css/scrollbar";
import "swiper/css/pagination";
import { Scrollbar } from "swiper";
function Slide1(props) {
    return (_jsx("div", { className: "slide_list", children: _jsx(Swiper, { slidesPerView: 5.5, spaceBetween: 30, centeredSlides: false, scrollbar: { hide: true }, modules: [Scrollbar], className: "mySwiper", children: props.loveditem.map((a, i) => {
                let discount = a.discount;
                let id = a.id;
                return (_jsx(SwiperSlide, { children: _jsxs(Link, { to: "detail/" + id, children: [_jsx("img", { src: '/casamia/' + a.src, alt: a.title }), _jsx("p", { className: "b_name", children: a.brand }), _jsx("p", { className: "t_name", children: a.title }), _jsx("p", { className: "orig_price", children: a.origin }), discount && (_jsx("p", { className: "discount", style: { fontSize: "14px" }, children: discount })), _jsx("p", { className: "fn_price", children: a.final }), _jsx("button", { className: "btn_like", onClick: () => { } })] }) }, i));
            }) }) }));
}
function Slide3(props) {
    return (_jsx("div", { className: "slide_list", children: _jsx(Swiper, { slidesPerView: 5.5, spaceBetween: 30, centeredSlides: false, scrollbar: { hide: true }, modules: [Scrollbar], className: "mySwiper", children: props.arrival.map((a, i) => {
                let discount = a.discount;
                let id = a.id;
                return (_jsx(SwiperSlide, { children: _jsxs(Link, { to: "detail/" + id, children: [_jsx("img", { src: '/casamia/' + a.src, alt: a.title }), _jsx("p", { className: "b_name", children: a.brand }), _jsx("p", { className: "t_name", children: a.title }), _jsx("p", { className: "orig_price", children: a.origin }), discount && (_jsx("p", { className: "discount", style: { fontSize: "14px" }, children: discount })), _jsx("p", { className: "fn_price", children: a.final }), _jsx("button", { className: "btn_like", onClick: () => { } })] }) }, i));
            }) }) }));
}
function Slide4(props) {
    //WEECKLY HTOSALE
    return (_jsx("div", { className: "slide_list", children: _jsx(Swiper, { slidesPerView: 5.5, spaceBetween: 30, centeredSlides: false, scrollbar: {
                hide: true,
            }, modules: [Scrollbar], className: "mySwiper", children: props.hotsale.map((a, i) => {
                let discount = a.discount;
                let id = a.id;
                return (_jsx(SwiperSlide, { children: _jsxs(Link, { to: "detail/" + id, children: [_jsx("img", { src: '/casamia/' + a.src, alt: a.title }), _jsx("p", { className: "b_name", children: a.brand }), _jsx("p", { className: "t_name", children: a.title }), _jsx("p", { className: "orig_price", children: a.origin }), (discount && (_jsx("p", { className: "discount", style: { fontSize: "14px" }, children: discount }))), _jsx("p", { className: "fn_price", children: a.final }), _jsx("button", { className: "btn_like", onClick: () => { } })] }) }));
            }) }) }));
}
function Slide5(props) {
    //WEECKLY HTOSALE
    return (_jsx("div", { className: "slide_list", children: _jsx(Swiper, { slidesPerView: 5.5, spaceBetween: 30, centeredSlides: false, scrollbar: {
                hide: true,
            }, modules: [Scrollbar], className: "mySwiper", children: props.collectable.map((a, i) => {
                let discount = a.discount;
                let id = a.id;
                return (_jsx(SwiperSlide, { children: _jsxs(Link, { to: "detail/" + id, children: [_jsx("img", { src: '/casamia/' + a.src, alt: a.title }), _jsx("p", { className: "b_name", children: a.brand }), _jsx("p", { className: "t_name", children: a.title }), _jsx("p", { className: "orig_price", children: a.origin }), (discount && (_jsx("p", { className: "discount", style: { fontSize: "14px" }, children: discount }))), _jsx("p", { className: "fn_price", children: a.final }), _jsx("button", { className: "btn_like", onClick: () => { } })] }) }));
            }) }) }));
}
function Brand(props) {
    // 추천 브랜드 컴포넌트
    return (_jsxs(_Fragment, { children: [_jsxs("div", { className: "title_brand", children: [_jsx("img", { src: '/casamia/' + props.brand.url }), _jsx("h5", { children: props.brand.name }), _jsx("h6", { children: props.brand.title })] }), _jsx(Link, { to: "/detail/" + props.brand.items[0].id, children: _jsxs("div", { className: "thumb_brand", children: [_jsx("div", { children: _jsx("img", { src: '/casamia/' + props.brand.items[0].src }) }), _jsx("p", { className: "b_name", children: props.brand.name }), _jsx("p", { className: "t_name", children: props.brand.items[0].title }), _jsx("p", { className: "orig_price", children: props.brand.items[0].origin }), _jsx("p", { className: "discount", style: { fontSize: "23px" }, children: props.brand.items[0].discount }), _jsx("p", { className: "fn_price", children: props.brand.items[0].final }), _jsx("button", { className: "btn_like", onClick: () => { } })] }) }), _jsx(Link, { to: "/detail/" + props.brand.items[1].id, children: _jsxs("div", { className: "thumb_brand bo_line", children: [_jsx("div", { children: _jsx("img", { src: '/casamia/' + props.brand.items[1].src }) }), _jsx("p", { className: "b_name", children: props.brand.name }), _jsx("p", { className: "t_name", children: props.brand.items[1].title }), _jsx("p", { className: "orig_price", children: props.brand.items[1].origin }), _jsx("p", { className: "discount", style: { fontSize: "23px" }, children: props.brand.items[1].discount }), _jsx("p", { className: "fn_price", children: props.brand.items[1].final }), _jsx("button", { className: "btn_like", onClick: () => { } })] }) }), _jsx(Link, { to: "/detail/" + props.brand.items[2].id, children: _jsxs("div", { className: "thumb_brand", children: [_jsx("div", { children: _jsx("img", { src: '/casamia/' + props.brand.items[2].src }) }), _jsx("p", { className: "b_name", children: props.brand.name }), _jsx("p", { className: "t_name", children: props.brand.items[2].title }), _jsx("p", { className: "orig_price", children: props.brand.items[2].origin }), _jsx("p", { className: "discount", style: { fontSize: "23px" }, children: props.brand.items[2].discount }), _jsx("p", { className: "fn_price", children: props.brand.items[2].final }), _jsx("button", { className: "btn_like" })] }) })] }));
}
class CenterMode extends Component {
    //EVENT
    render() {
        const settings = {
            className: "center",
            centerMode: true,
            infinite: true,
            centerPadding: "20px",
            slidesToShow: 1.8,
            speed: 500,
        };
        return (_jsxs("div", { className: "eventBox", children: [_jsx("h2", { className: "main_title", children: "EVENT" }), _jsxs(Slider, { ...settings, children: [_jsxs("div", { className: "event_item", children: [_jsx("div", { children: _jsx("img", { src: "/casamia/img/slide/event1.avif" }) }), _jsx("h3", { children: "\uBA74\uC138\uC810 \uC1FC\uD551\uC9C0\uC6D0\uAE08 \uBC1B\uACE0 \uB5A0\uB098\uC790!" }), _jsx("p", { children: "\uAD73\uB2F7\uCEF4 5\uB9CC\uC6D0 \uC774\uC0C1 \uAD6C\uB9E4 \uACE0\uAC1D \uC804\uC6D0" })] }), _jsxs("div", { className: "event_item", children: [_jsx("div", { children: _jsx("img", { src: "/casamia/img/slide/event2.avif" }) }), _jsx("h3", { children: "\uACF5\uAC04\uC744 \uB113\uD600\uC904 \uC815\uB9AC\uD15C" }), _jsx("p", { children: "\uAD73\uB2F7\uCEF4 \uB2E8\uB3C5 \uD61C\uD0DD \uC0C1\uD488 \uD655\uC778\uD558\uC138\uC694" })] }), _jsxs("div", { className: "event_item", children: [_jsx("div", { children: _jsx("img", { src: "/casamia/img/slide/event3.avif" }) }), _jsx("h3", { children: "\uAE30\uAC04 \uD55C\uC815 \uC0C1\uD488 + 10% \uCFE0\uD3F0" }), _jsx("p", { children: "\uD0A8\uD0A4\uB85C\uBD07 \uC544\uD2B8 \uBCA0\uC5B4\uBE0C\uB9AD" })] })] })] }));
    }
}
function Room(props) {
    // 리빙룸, 다이닝룸, 베드룸 이미지 출력
    const { tap, setIndex, index } = props;
    return (_jsxs(_Fragment, { children: [_jsx("button", { onClick: () => {
                    setIndex(0);
                }, style: { opacity: 0 === index ? 1 : 0.6 }, children: _jsx("img", { src: '/casamia/' + roomImg[tap].src[0] }) }), _jsx("button", { onClick: () => {
                    setIndex(1);
                }, style: { opacity: 1 === index ? 1 : 0.6 }, children: _jsx("img", { src: '/casamia/' + roomImg[tap].src[1] }) }), _jsx("button", { onClick: () => {
                    setIndex(2);
                }, style: { opacity: 2 === index ? 1 : 0.6 }, children: _jsx("img", { src: '/casamia/' + roomImg[tap].src[2] }) })] }));
}
function Detailroom(props) {
    // 선택한 이미지 메인 출력
    const { tap, index } = props;
    return (_jsx(_Fragment, { children: _jsx("img", { src: '/casamia/' + roomImg[tap].src[index] }) }));
}
function BestBrand(props) {
    let id = props.id;
    return (_jsx("li", { children: _jsxs(Link, { to: "/detail/" + id, children: [_jsx("img", { src: '/casamia/' + props.src }), _jsx("p", { className: "t_name", style: { fontSize: "20px", margin: "10px 0" }, children: props.title }), _jsx("p", { className: "orig_price", children: props.origin }), _jsx("p", { className: "discount", children: props.discount }), _jsx("p", { className: "fn_price", children: props.final }), _jsx("button", { className: "btn_like" })] }) }));
}
export { Brand, CenterMode, Slide1, Slide3, Slide4, Slide5, Room, Detailroom, BestBrand, };
