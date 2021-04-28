const path = require('path')
const execSync = require('child_process').execSync

console.log('starting cleanup.sh')

execSync(path.join(__dirname, 'cleanup.sh'), { stdio: 'inherit' })
