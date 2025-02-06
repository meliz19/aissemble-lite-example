from process_data import run
################## ADDED CODE FOR DEBUGGING K8S JOB ##################
import debugpy
import time
import os
######################################################################

if __name__ == '__main__':
    
    ################## ADDED CODE FOR DEBUGGING K8S JOB ##################
    if os.getenv("DEBUG_MODE") == "1":
        debugpy.listen("0.0.0.0", 5678)
        print("Waiting for debugger to attach...")

        # Block until VS Code attaches
        debugpy.wait_for_client()

        print("Debugger attached, continuing...")

    ######################################################################

    processed_data = run()
    print(f'Processed Data: {processed_data}')

