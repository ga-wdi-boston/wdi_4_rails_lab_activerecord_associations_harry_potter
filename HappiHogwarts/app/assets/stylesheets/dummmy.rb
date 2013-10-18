<ol>Student Roster:
    <% lecture.students.each do |student| %>
    <li><%= link_to student.name, student_url %></li>
    </ol> -->
<!--    <% end %>
  </ul>