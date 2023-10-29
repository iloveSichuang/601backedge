import psutil
import time

def get_cpu_usage():
    cpu_usage = psutil.cpu_percent(interval=1)
    return cpu_usage

def get_memory_usage():
    memory = psutil.virtual_memory()
    memory_usage = memory.percent
    return memory_usage

if __name__ == "__main__":
    while True:
        cpu_usage = get_cpu_usage()
        memory_usage = get_memory_usage()
        print(f"当前CPU占用率：{cpu_usage}%")
        print(f"当前内存占用率：{memory_usage}%")
        print("-" * 30)
        time.sleep(1)

