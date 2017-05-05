package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TJiangcheng;

/**
 	* A data access object (DAO) providing persistence and search support for TJiangcheng entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.model.TJiangcheng
  * @author MyEclipse Persistence Tools 
 */

public class TJiangchengDAO extends HibernateDaoSupport  {
		 private static final Log log = LogFactory.getLog(TJiangchengDAO.class);
		//property constants
	public static final String YUANGONG_ID = "yuangongId";
	public static final String RIQI = "riqi";
	public static final String SHUXING = "shuxing";
	public static final String BIAOTI = "biaoti";
	public static final String JINE = "jine";



	protected void initDao() {
		//do nothing
	}
    
    public void save(TJiangcheng transientInstance) {
        log.debug("saving TJiangcheng instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(TJiangcheng persistentInstance) {
        log.debug("deleting TJiangcheng instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public TJiangcheng findById( java.lang.Integer id) {
        log.debug("getting TJiangcheng instance with id: " + id);
        try {
            TJiangcheng instance = (TJiangcheng) getHibernateTemplate()
                    .get("com.model.TJiangcheng", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(TJiangcheng instance) {
        log.debug("finding TJiangcheng instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding TJiangcheng instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from TJiangcheng as model where model." 
         						+ propertyName + "= ?";
		 return getHibernateTemplate().find(queryString, value);
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByYuangongId(Object yuangongId
	) {
		return findByProperty(YUANGONG_ID, yuangongId
		);
	}
	
	public List findByRiqi(Object riqi
	) {
		return findByProperty(RIQI, riqi
		);
	}
	
	public List findByShuxing(Object shuxing
	) {
		return findByProperty(SHUXING, shuxing
		);
	}
	
	public List findByBiaoti(Object biaoti
	) {
		return findByProperty(BIAOTI, biaoti
		);
	}
	
	public List findByJine(Object jine
	) {
		return findByProperty(JINE, jine
		);
	}
	

	public List findAll() {
		log.debug("finding all TJiangcheng instances");
		try {
			String queryString = "from TJiangcheng";
		 	return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public TJiangcheng merge(TJiangcheng detachedInstance) {
        log.debug("merging TJiangcheng instance");
        try {
            TJiangcheng result = (TJiangcheng) getHibernateTemplate()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(TJiangcheng instance) {
        log.debug("attaching dirty TJiangcheng instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(TJiangcheng instance) {
        log.debug("attaching clean TJiangcheng instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

	public static TJiangchengDAO getFromApplicationContext(ApplicationContext ctx) {
    	return (TJiangchengDAO) ctx.getBean("TJiangchengDAO");
	}
}