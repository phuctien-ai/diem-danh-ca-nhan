# Điểm danh làm việc — ứng dụng cá nhân của Tien

Ứng dụng điểm danh cá nhân cho một người dùng: làm việc tự do, tự kỷ luật giờ làm việc, theo dõi bản thân có làm đúng giờ không.

## Tính năng v1 (frontend)

- Nút Vào làm / Tan làm, tính muộn theo phút, cảnh báo về sớm
- Theo dõi tuần, chuỗi ngày đúng giờ, tỉ lệ đúng giờ trong tháng
- Lịch tháng, bấm vào từng ngày để xem chi tiết
- Cài đặt giờ làm việc: giờ vào mục tiêu, giờ tan mục tiêu, số phút cho phép trễ, ngày làm việc trong tuần
- Thêm / sửa / xóa ngày đã qua, xuất CSV sao lưu

## Cách dùng

Mở file `index.html` bằng trình duyệt là dùng được ngay. Dữ liệu v1 lưu bằng localStorage trên trình duyệt đó.

## Công nghệ đã chốt

- Frontend: HTML/CSS/JS thuần
- Backend (bước tiếp theo): Supabase — PostgreSQL + Auth + Row Level Security
- Deploy: GitHub Pages / Netlify (trang tĩnh)
