public class ApexCSRF_FP {
    public ApexCSRF_FP() {  // issue raised here
        List<Task> tasks = [Select Id, Subject FROM Task];
        for (Task t : tasks) {
            t.subject = 'test';
        }
        update tasks;
    }
    public List<Task> getValue() {
        return [Select Id, Subject FROM Task];
    }
}
