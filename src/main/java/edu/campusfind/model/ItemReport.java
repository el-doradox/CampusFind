package edu.campusfind.model;

import java.time.LocalDate;

/** Represents one lost-item or found-item report. */
public class ItemReport {
    public enum ReportType { LOST, FOUND }
    public enum Status { OPEN, MATCHED, RETURNED, CLOSED }

    private long itemId;
    private long reporterId;
    private ReportType reportType;
    private String title;
    private String category;
    private String description;
    private String location;
    private LocalDate dateLostFound;
    private Status status = Status.OPEN;

    public ItemReport() {}

    public ItemReport(long reporterId, ReportType reportType, String title,
                      String category, String description, String location,
                      LocalDate dateLostFound) {
        this.reporterId = reporterId;
        this.reportType = reportType;
        this.title = title;
        this.category = category;
        this.description = description;
        this.location = location;
        this.dateLostFound = dateLostFound;
    }

    public long getItemId() { return itemId; }
    public void setItemId(long itemId) { this.itemId = itemId; }
    public long getReporterId() { return reporterId; }
    public void setReporterId(long reporterId) { this.reporterId = reporterId; }
    public ReportType getReportType() { return reportType; }
    public void setReportType(ReportType reportType) { this.reportType = reportType; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }
    public LocalDate getDateLostFound() { return dateLostFound; }
    public void setDateLostFound(LocalDate dateLostFound) { this.dateLostFound = dateLostFound; }
    public Status getStatus() { return status; }
    public void setStatus(Status status) { this.status = status; }
}
