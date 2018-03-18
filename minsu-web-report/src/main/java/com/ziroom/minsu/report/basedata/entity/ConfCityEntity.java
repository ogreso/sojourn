package com.ziroom.minsu.report.basedata.entity;

import java.util.Date;

import com.asura.framework.base.entity.BaseEntity;

public class ConfCityEntity extends BaseEntity{
    /**
	 * 序列化id
	 */
	private static final long serialVersionUID = -1276133406434865165L;

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.id
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.fid
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private String fid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.show_name
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private String showName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.hot
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Long hot;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.code
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private String code;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.level
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Integer level;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.pcode
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private String pcode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.initial
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private String initial;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.city_status
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Integer cityStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.city_type
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Integer cityType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.radii
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Integer radii;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.longitude
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Double longitude;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.latitude
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Double latitude;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.create_date
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Date createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.last_modify_date
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Date lastModifyDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.create_fid
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private String createFid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_conf_city.is_del
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    private Integer isDel;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.id
     *
     * @return the value of t_conf_city.id
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.id
     *
     * @param id the value for t_conf_city.id
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.fid
     *
     * @return the value of t_conf_city.fid
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public String getFid() {
        return fid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.fid
     *
     * @param fid the value for t_conf_city.fid
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setFid(String fid) {
        this.fid = fid == null ? null : fid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.show_name
     *
     * @return the value of t_conf_city.show_name
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public String getShowName() {
        return showName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.show_name
     *
     * @param showName the value for t_conf_city.show_name
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setShowName(String showName) {
        this.showName = showName == null ? null : showName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.hot
     *
     * @return the value of t_conf_city.hot
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Long getHot() {
        return hot;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.hot
     *
     * @param hot the value for t_conf_city.hot
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setHot(Long hot) {
        this.hot = hot;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.code
     *
     * @return the value of t_conf_city.code
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.code
     *
     * @param code the value for t_conf_city.code
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.level
     *
     * @return the value of t_conf_city.level
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Integer getLevel() {
        return level;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.level
     *
     * @param level the value for t_conf_city.level
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setLevel(Integer level) {
        this.level = level;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.pcode
     *
     * @return the value of t_conf_city.pcode
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public String getPcode() {
        return pcode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.pcode
     *
     * @param pcode the value for t_conf_city.pcode
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setPcode(String pcode) {
        this.pcode = pcode == null ? null : pcode.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.initial
     *
     * @return the value of t_conf_city.initial
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public String getInitial() {
        return initial;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.initial
     *
     * @param initial the value for t_conf_city.initial
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setInitial(String initial) {
        this.initial = initial == null ? null : initial.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.city_status
     *
     * @return the value of t_conf_city.city_status
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Integer getCityStatus() {
        return cityStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.city_status
     *
     * @param cityStatus the value for t_conf_city.city_status
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setCityStatus(Integer cityStatus) {
        this.cityStatus = cityStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.city_type
     *
     * @return the value of t_conf_city.city_type
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Integer getCityType() {
        return cityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.city_type
     *
     * @param cityType the value for t_conf_city.city_type
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setCityType(Integer cityType) {
        this.cityType = cityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.radii
     *
     * @return the value of t_conf_city.radii
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Integer getRadii() {
        return radii;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.radii
     *
     * @param radii the value for t_conf_city.radii
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setRadii(Integer radii) {
        this.radii = radii;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.longitude
     *
     * @return the value of t_conf_city.longitude
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Double getLongitude() {
        return longitude;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.longitude
     *
     * @param longitude the value for t_conf_city.longitude
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.latitude
     *
     * @return the value of t_conf_city.latitude
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Double getLatitude() {
        return latitude;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.latitude
     *
     * @param latitude the value for t_conf_city.latitude
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.create_date
     *
     * @return the value of t_conf_city.create_date
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.create_date
     *
     * @param createDate the value for t_conf_city.create_date
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.last_modify_date
     *
     * @return the value of t_conf_city.last_modify_date
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Date getLastModifyDate() {
        return lastModifyDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.last_modify_date
     *
     * @param lastModifyDate the value for t_conf_city.last_modify_date
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setLastModifyDate(Date lastModifyDate) {
        this.lastModifyDate = lastModifyDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.create_fid
     *
     * @return the value of t_conf_city.create_fid
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public String getCreateFid() {
        return createFid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.create_fid
     *
     * @param createFid the value for t_conf_city.create_fid
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setCreateFid(String createFid) {
        this.createFid = createFid == null ? null : createFid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_conf_city.is_del
     *
     * @return the value of t_conf_city.is_del
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public Integer getIsDel() {
        return isDel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_conf_city.is_del
     *
     * @param isDel the value for t_conf_city.is_del
     *
     * @mbggenerated Mon Mar 21 18:22:35 CST 2016
     */
    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }
}