When you introduce changes to your RESTful API, it's true that consumer companies might need to update the API calls in their code and redeploy their systems if the changes are not backward-compatible. However, this doesn’t mean you have to force a disruptive update every time. Here’s how you can manage it:

---

### **1. API Versioning**
- **Versioned Endpoints:**  
  Include a version in your URL (e.g., `/api/v1/logs`). When changes are necessary, you can create a new version (e.g., `/api/v2/logs`) while keeping the old version active. This allows consumers to migrate on their own schedule without an immediate break.
  
- **Backward Compatibility:**  
  Design your API changes to be backward-compatible when possible. For example, you can add new fields as optional rather than removing or renaming existing ones.

---

### **2. Deprecation Policy & Communication**
- **Clear Deprecation Notices:**  
  Document changes and mark endpoints as deprecated well in advance. Provide timelines so that consumers know when the old version will be retired.
  
- **Robust Documentation:**  
  Use tools like Swagger/OpenAPI to keep your documentation up to date. Inform your consumers about what changes to expect and how to migrate their code.

---

### **3. Impact Mitigation Strategies**
- **Side-by-Side Deployment:**  
  Run multiple API versions concurrently. This minimizes the risk of downtime and gives consumers the time to update their integrations gradually.
  
- **Feature Flags & Rollouts:**  
  Introduce new features behind feature flags. This allows you to test changes in production without immediately impacting all consumers.

---

### **4. Is It a Good Approach?**
- **Short Answer:**  
  If not managed properly, yes—forcing consumers to change their API calls can lead to system downtime and additional deployment efforts. However, by using versioning, backward compatibility, and clear communication, you can mitigate these issues and make the update process smooth.
  
- **Best Practice:**  
  Avoid breaking changes in your API unless absolutely necessary. When breaking changes are required, ensure you provide a migration path and ample notice to your consumers.

---

### **Conclusion**
Using a RESTful service is a good approach if you implement solid versioning and backward compatibility strategies. This way, while consumers may eventually need to update their code, they aren’t forced into an immediate, disruptive change. Instead, they have time to plan, test, and deploy their updates with minimal impact on their systems.

Let me know if you need further details on any of these strategies or additional examples!