import { jsx as _jsx, jsxs as _jsxs, Fragment as _Fragment } from "react/jsx-runtime";
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import { getTotalCount } from './Cart';
import { useSelector } from 'react-redux';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faChevronUp } from '@fortawesome/free-solid-svg-icons';
function scrollToPosition(y) {
    window.scrollTo(0, y);
}
function Header() {
    const state = useSelector((state) => state);
    const totalCount = getTotalCount(state);
    return (_jsx(_Fragment, { children: _jsxs("div", { className: "container-fluid", children: [_jsxs("div", { className: "row", style: { margin: "20px 150px", height: "30px" }, children: [_jsx("div", { className: "col-md-3", children: _jsx(Link, { to: "/", children: _jsx("h1", { className: "logoImg" }) }) }), _jsx("div", { className: "col-md-6", style: { textAlign: "center" }, children: _jsxs("ul", { className: "topNav1", children: [_jsx("li", { onClick: () => { scrollToPosition(5880); }, children: "SALE" }), _jsx("li", { onClick: () => { scrollToPosition(1200); }, children: "BEST" }), _jsx("li", { onClick: () => { scrollToPosition(9450); }, children: "OUTLET" }), _jsx("li", { onClick: () => { scrollToPosition(2000); }, children: "BRAND" }), _jsx("li", { onClick: () => { scrollToPosition(7700); }, children: "MAGAZINE" }), _jsx("li", { onClick: () => { scrollToPosition(5050); }, children: "EVENT" })] }) }), _jsxs("div", { className: "col-md-3 top_icon", children: [_jsx("span", { children: _jsx(Link, { to: "/", children: _jsx("img", { src: "/casamia/img/head_ico1.png" }) }) }), _jsxs("span", { children: [_jsx(Link, { to: "/cart", children: _jsx("img", { src: "/casamia/img/head_ico2.png" }) }), _jsx("p", { children: totalCount })] }), _jsx("span", { children: _jsx(Link, { to: "/", children: _jsx("img", { src: "/casamia/img/head_ico3.png" }) }) }), _jsx("span", { children: _jsx(Link, { to: "/", children: _jsx("img", { src: "/casamia/img/head_ico4.png" }) }) })] })] }), _jsx("div", { className: "container-fluid", style: { backgroundColor: "#000" }, children: _jsx("div", { className: "row", children: _jsxs("div", { style: { backgroundColor: "#000", textAlign: "center" }, children: [_jsx("img", { src: "/casamia/img/pc_shinsegae_casa_logo.png" }), _jsx("span", { style: { margin: "0 10px", color: "#bbb", fontSize: "8px" }, children: "|" }), _jsx("span", { style: { color: "#fff", fontSize: "12px", lineHeight: "30px" }, children: "\uAE4C\uC0AC\uBBF8\uC544 \uACF5\uC2DD \uC1FC\uD551\uBAB0" })] }) }) })] }) }));
}
function Footer() {
    return (_jsxs("div", { className: "footer", children: [_jsxs("div", { children: [_jsx("h1", { className: "logoImg2" }), _jsxs("ul", { className: "c_notice", children: [_jsx("li", { children: _jsx(Link, { to: "", children: "\uAC1C\uC778\uC815\uBCF4\uCC98\uB9AC\uBC29\uCE68 " }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uC11C\uBE44\uC2A4 \uC774\uC6A9\uC57D\uAD00" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uC601\uC0C1\uC815\uBCF4\uCC98\uB9AC\uAE30\uAE30 \uC6B4\uC601\uAD00\uB9AC\uBC29\uCE68" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uD68C\uC0AC\uC18C\uAC1C " }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uCC44\uC6A9\uC815\uBCF4" }) })] }), _jsxs("div", { className: "a_company", children: [_jsxs("ul", { children: [_jsx("li", { children: _jsx(Link, { to: "", children: "\uC0C1\uD638\uBA85 : (\uC8FC)\uC2E0\uC138\uACC4\uAE4C\uC0AC" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uB300\uD45C\uC774\uC0AC : \uAE40\uD64D\uADF9" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uC8FC\uC18C : \uC11C\uC6B8\uC2DC \uC911\uAD6C \uB0A8\uB300\uBB38\uC2DC\uC7A510\uAE382 \uBA54\uC0AC\uBE4C\uB529 5-6\uCE35" }) })] }), _jsxs("ul", { children: [_jsx("li", { children: _jsx(Link, { to: "", children: "\uC0AC\uC5C5\uC790\uB4F1\uB85D\uBC88\uD638 : 120-81-11794" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uD1B5\uC2E0\uD310\uB9E4\uC5C5 \uC2E0\uACE0:2021-\uC11C\uC6B8\uC911\uAD6C-1960" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uAC1C\uC778\uC815\uBCF4\uBCF4\uD638\uCC45\uC784\uC790 : \uAE40\uCC2C\uD6C4" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uC0AC\uC5C5\uC790 \uC815\uBCF4\uD655\uC778" }) })] }), _jsxs("ul", { children: [_jsx("li", { children: _jsx(Link, { to: "", children: "\uD638\uC2A4\uD305\uC81C\uACF5\uC790 : (\uC8FC)\uC2E0\uC138\uACC4\uC544\uC774\uC564\uC528" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "e-mail:guud@shinsegae.com" }) }), _jsx("li", { children: _jsx(Link, { to: "", children: "\uC5D0\uC2A4\uD06C\uB85C \uC11C\uBE44\uC2A4 \uAC00\uC785\uD655\uC778" }) })] })] }), _jsx("p", { children: "Copyright\u00A92023 SHINSEGAE CASA Co., Ltd. All rights reserved" }), _jsxs("div", { className: "isms_mark", children: [_jsx("img", { src: "/casamia/img/img_isms.png" }), _jsx("span", { children: "\uC628\uB77C\uC778 \uC1FC\uD551\uBAB0 \uC6B4\uC601" }), _jsx("span", { children: "|" }), _jsx("span", { children: "[\uC720\uD6A8\uAE30\uAC04] 2023.05.17 ~ 2026.05.16" })] })] }), _jsxs("div", { children: [_jsx("p", { className: "as_service", children: "\uAE4C\uC0AC\uBBF8\uC544 \uC0C1\uD488 AS\uC811\uC218" }), _jsxs("ul", { className: "call", children: [_jsxs("li", { children: [_jsx("span", { children: "\uACE0\uAC1D\uBB38\uC758 \uB300\uD45C\uC804\uD654" }), "1566-0228"] }), _jsxs("li", { children: [_jsx("span", { children: "\uC2E0\uC138\uACC4\uAE4C\uC0AC AS\uC804\uD654" }), "1588-3408"] })] }), _jsx("p", { children: "\uD3C9\uC77C 09:00-18:00 (\uC8FC\uB9D0 \uBC0F \uACF5\uD734\uC77C \uD734\uBB34)" }), _jsxs("div", { children: [_jsx("button", { children: "\uAE4C\uC0AC\uBBF8\uC544 \uB300\uB9AC\uC810 \uAC1C\uC124\uC548\uB0B4" }), _jsx("button", { children: "\uAD73\uB2F7\uCEF4 \uC785\uC810\uBB38\uC758" })] }), _jsx(Link, { to: "", children: _jsx("div", { className: "icon_sns" }) })] })] }));
}
function TopButton() {
    const [isTopButtonVisible, setIsTopButtonVisible] = useState(false);
    useEffect(() => {
        const handleScroll = () => {
            const scrollY = window.scrollY;
            const isVisible = scrollY >= 1000;
            setIsTopButtonVisible(isVisible);
        };
        window.addEventListener('scroll', handleScroll);
        return () => {
            window.removeEventListener('scroll', handleScroll);
        };
    }, []);
    const handleClick = () => {
        window.scrollTo(0, 0);
    };
    return (_jsx("button", { className: `topButton ${isTopButtonVisible ? 'visible' : 'hidden'}`, onClick: handleClick, children: _jsx(FontAwesomeIcon, { icon: faChevronUp }) }));
}
export { Header, Footer, TopButton };
