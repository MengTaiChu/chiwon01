const { exec } = require('child_process');

// 执行 npm run dev 命令
const child = exec('npm run dev');

// 监听子进程的输出
child.stdout.on('data', (data) => {
  console.log(data);
});

child.stderr.on('data', (data) => {
  console.error(data);
});

child.on('close', (code) => {
  console.log(`子进程退出，退出码：${code}`);
});
