<template>
  <div class="Account">
  {{msg}}
  </div>
</template>
<script>
  import Web3 from 'web3'
  // import net from 'net'
  export default {
    name: 'Account',
    data () {
      let returnMsg = {msg: ' '}
      let web3 = new Web3(new Web3.providers.HttpProvider('http://127.0.0.1:8545'))
      // TODO 로컬 path 방식에서는 경로를 못찾는지 동작을 안한다. 확인 필요.
      // let web3 = new Web3('/Users/aron/Desktop/solidity/solidity_Test/web3/blockchinNet/geth.ipc', net)
      web3.eth.getAccounts().then(accArr => {
        accArr.forEach(account => {
          web3.eth.getBalance(account).then(balance => {
            returnMsg.msg = 'Account:' + account + ', Balance:' + balance
          })
        })
      })
      return returnMsg
    }
  }
</script>
