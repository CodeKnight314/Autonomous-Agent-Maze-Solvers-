apt-get update
apt-get install tmux unzip zip libgl1-mesa-glx
wget https://mujoco.org/download/mujoco210-linux-x86_64.tar.gz
mkdir -p /root/.mujoco
tar -xzf mujoco210-linux-x86_64.tar.gz -C /root/.mujoco/
rm -r __MACOSX/ Autonomous-Agent-Maze-Solvers-.zip
apt update
apt install -y build-essential libosmesa6-dev libglew-dev libgl1-mesa-glx libglfw3 patchelf
apt install -y libegl1 libgl1-mesa-glx libosmesa6 libglfw3
cd Autonomous-Agent-Maze-Solvers-/
pip install -r requirements.txt
pip install git+https://github.com/Farama-Foundation/Gymnasium-Robotics.git
pip show gymnasium-robotics
export MUJOCO_GL=egl
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/.mujoco/mujoco210/bin