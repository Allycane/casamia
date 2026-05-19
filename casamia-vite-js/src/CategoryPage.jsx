import React, { useMemo, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import data1 from './data1';
import { theme1, theme2, theme3, theme4, theme5 } from './data3';
import { mozi, bottle, tounou, karayoung, casa } from './data4';
import data5 from './data5';
import data6 from './data6';
import data7 from './data7';
import data8 from './data8';

const categoryConfigs = {
  bedroom: {
    title: '침실가구',
    breadcrumb: ['가구', '침실가구'],
    match: '침실가구',
    description: '편안한 휴식과 수납을 위한 침실가구를 한눈에 확인해보세요.',
  },
  living: {
    title: '거실가구',
    breadcrumb: ['가구', '거실가구'],
    match: '거실가구',
    description: '소파, 테이블, 거실장까지 거실 공간에 어울리는 상품을 모아봤어요.',
  },
};

const allProducts = [
  ...data1,
  ...theme1,
  ...theme2,
  ...theme3,
  ...theme4,
  ...theme5,
  ...mozi,
  ...bottle,
  ...tounou,
  ...karayoung,
  ...casa,
  ...data5,
  ...data6,
  ...data7,
  ...data8,
].filter((item) => item && item.id);

function formatPrice(value) {
  if (!value) return '';
  return `${value}원`;
}

function ProductImage({ src, title }) {
  const [error, setError] = useState(false);

  if (!src || error) {
    return <div className="category-card__placeholder">CASAMIA</div>;
  }

  return <img src={`/casamia/${src}`} alt={title} onError={() => setError(true)} />;
}

export default function CategoryPage() {
  const { slug } = useParams();
  const config = categoryConfigs[slug] || categoryConfigs.bedroom;
  const [selectedSub, setSelectedSub] = useState('전체');

  const products = useMemo(() => {
    return allProducts.filter((item) => item.category?.[0] === config.match);
  }, [config.match]);

  const subCategories = useMemo(() => {
    const list = Array.from(
      new Set(products.map((item) => item.category?.[1]).filter(Boolean))
    );
    return ['전체', ...list];
  }, [products]);

  const visibleProducts = useMemo(() => {
    if (selectedSub === '전체') return products;
    return products.filter((item) => item.category?.[1] === selectedSub);
  }, [products, selectedSub]);

  const filterChips = ['무료배송', '색상', '사용 인원', '소재', '형태', '브랜드', '가격'];

  return (
    <div className="category-page container-fluid">
      <div className="category-page__inner">
        <div className="category-breadcrumb">
          {config.breadcrumb.map((item, index) => (
            <React.Fragment key={item}>
              <span className={index === config.breadcrumb.length - 1 ? 'current' : ''}>{item}</span>
              {index < config.breadcrumb.length - 1 && <span className="sep">&gt;</span>}
            </React.Fragment>
          ))}
        </div>

        <div className="category-header">
          <h2>{config.title}</h2>
          <p>{config.description}</p>
        </div>

        <ul className="category-tabs">
          {subCategories.map((item) => (
            <li key={item}>
              <button
                className={selectedSub === item ? 'active' : ''}
                onClick={() => setSelectedSub(item)}
              >
                {item}
              </button>
            </li>
          ))}
        </ul>

        <div className="category-filters">
          {filterChips.map((item) => (
            <button key={item}>{item}</button>
          ))}
        </div>

        <div className="category-summary">
          <strong>{visibleProducts.length}개 상품</strong>
          <span>인기상품순</span>
        </div>

        <div className="category-grid">
          {visibleProducts.map((item) => (
            <Link to={`/detail/${item.id}`} className="category-card" key={item.id}>
              <div className="category-card__image">
                <ProductImage src={item.src} title={item.title} />
                {item.discount && <span className="category-card__badge">단독특가</span>}
              </div>
              <div className="category-card__body">
                <p className="category-card__brand">{item.brand}</p>
                <h3>{item.title}</h3>
                <div className="category-card__price">
                  {item.discount && <span className="discount">{item.discount}</span>}
                  <strong>{formatPrice(item.final)}</strong>
                </div>
              </div>
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}
