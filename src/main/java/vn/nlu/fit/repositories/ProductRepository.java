package vn.nlu.fit.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import vn.nlu.fit.entity.ProductEntity;

import java.util.ArrayList;
import java.util.List;

public interface ProductRepository extends JpaRepository<ProductEntity,String> {
    @Query(value = "select * from product where ACTIVE=1 order by STAR_MEDIUM desc limit 10",nativeQuery = true)
    List<ProductEntity> getTop10Star();

    @Query(value = "select * from product where ACTIVE=1   order by PRICE desc limit 10",nativeQuery = true)
    List<ProductEntity> getTop10Price();

    @Query(value = "select  * from product where ACTIVE=1  order by DISCOUNT desc limit 10",nativeQuery = true)
    List<ProductEntity> getTop10Sale();

    @Query(value = "select * from product where  ACTIVE=1 and PRODUCT_NAME like %?1%",nativeQuery = true)
    Page<ProductEntity> seach(String key,Pageable pageable);
    @Query(value = "select * from product where ACTIVE=1 and  PRODUCT_NAME like %?1%",nativeQuery = true)
    List<ProductEntity> seach(String key);

    @Query(value = "select * from product where ID_SUPPLIER=?1 and ACTIVE=1 ",nativeQuery = true)
    Page<ProductEntity> getProductBySupplier(String ID_SUPPLIER, Pageable pageable);

    @Query(value = "select  * from product where ACTIVE=1 order by ID_PRODUCT desc limit 1",nativeQuery = true)
    List<ProductEntity> ok();

    List<ProductEntity> findByACTIVE(int active);

}
