package com.zs.bo;

import java.util.Date;

public class QuapiConfigSource {
    private String id;

    private String configId;

    private String configCode;

    private String sourceCode;

    private String sourceId;

    private Date crtDttm;

    private Date lastupDttm;

    private String crtId;

    private String lastupId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getConfigId() {
        return configId;
    }

    public void setConfigId(String configId) {
        this.configId = configId == null ? null : configId.trim();
    }

    public String getConfigCode() {
        return configCode;
    }

    public void setConfigCode(String configCode) {
        this.configCode = configCode == null ? null : configCode.trim();
    }

    public String getSourceCode() {
        return sourceCode;
    }

    public void setSourceCode(String sourceCode) {
        this.sourceCode = sourceCode == null ? null : sourceCode.trim();
    }

    public String getSourceId() {
        return sourceId;
    }

    public void setSourceId(String sourceId) {
        this.sourceId = sourceId == null ? null : sourceId.trim();
    }

    public Date getCrtDttm() {
        return crtDttm;
    }

    public void setCrtDttm(Date crtDttm) {
        this.crtDttm = crtDttm;
    }

    public Date getLastupDttm() {
        return lastupDttm;
    }

    public void setLastupDttm(Date lastupDttm) {
        this.lastupDttm = lastupDttm;
    }

    public String getCrtId() {
        return crtId;
    }

    public void setCrtId(String crtId) {
        this.crtId = crtId == null ? null : crtId.trim();
    }

    public String getLastupId() {
        return lastupId;
    }

    public void setLastupId(String lastupId) {
        this.lastupId = lastupId == null ? null : lastupId.trim();
    }
}