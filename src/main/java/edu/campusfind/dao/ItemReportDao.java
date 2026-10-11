package edu.campusfind.dao;

import edu.campusfind.model.ItemReport;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

/** Data-access contract for item reports. */
public interface ItemReportDao {
    long create(ItemReport report) throws SQLException;
    Optional<ItemReport> findById(long itemId) throws SQLException;
    List<ItemReport> search(String keyword, String category, String reportType) throws SQLException;
}
