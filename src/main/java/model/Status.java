package model;

/**
 * Created by Bekzat on 07.12.2016.
 */
public class Status {
    private Long id;
    private String licensePlate;
    private Integer camera;
    private Integer libraWeight;
    private String status;
    private Long timestamp;
    private Long libraIn;
    private Long libraOut;

    public Status() {
    }

    public Status(Long id, String licensePlate, Integer camera, Integer libraWeight, String status, Long timestamp, Long libraIn, Long libraOut) {
        this.id = id;
        this.licensePlate = licensePlate;
        this.camera = camera;
        this.libraWeight = libraWeight;
        this.status = status;
        this.timestamp = timestamp;
        this.libraIn = libraIn;
        this.libraOut = libraOut;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

    public Integer getCamera() {
        return camera;
    }

    public void setCamera(Integer camera) {
        this.camera = camera;
    }

    public Integer getLibraWeight() {
        return libraWeight;
    }

    public void setLibraWeight(Integer libraWeight) {
        this.libraWeight = libraWeight;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }

    public Long getLibraIn() {
        return libraIn;
    }

    public void setLibraIn(Long libraIn) {
        this.libraIn = libraIn;
    }

    public Long getLibraOut() {
        return libraOut;
    }

    public void setLibraOut(Long libraOut) {
        this.libraOut = libraOut;
    }
}
