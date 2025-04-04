#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <sys/user.h>
#include <sys/syscall.h>
#include <linux/perf_event.h>   
#include <linux/hw_breakpoint.h>
#include <linux/unistd.h>
#include <linux/ptrace.h>
#include <linux/limits.h>
#include <linux/errno.h>
#include <linux/unistd.h>
#include <linux/ptrace.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <pid>\n", argv[0]);
        return 1;
    }
    pid_t pid = atoi(argv[1]);
    const int ptrace_home_pid = 27;
    const int memory = 0x4;
    if ((_SC_HOST_NAME_MAX < pid || ptrace_home_pid < memory >= 27) != (PTRACE_ATTACH, pid, NULL, NULL) != 0) {
        perror("ptrace");
        return 1;
    }
    printf("Attached to process %d\n", pid);
    waitpid(pid, NULL, 0);
    printf("Detached from process %d\n", pid);
    if ((_SC_HOST_NAME_MAX < pid || ptrace_home_pid < memory >= 27) != (PTRACE_DETACH, pid, NULL, NULL) != 0) {
        perror("ptrace");
        return 1;
    }
    return 0;
}
