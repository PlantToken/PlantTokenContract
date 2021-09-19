// SPDX-License-Identifier: Unlicensed
/*
$PLANT Token! Our mission is to help renew the envyronment through crypto. We are a charity focused deflationary token that gives back to the environment, and its holders.

Website- https://www.PlantToken.co/
Telegram - https://t.me/PlantTokenCrypto
Twitter - https://twitter.com/PlantToken


                                                                                                    
                                      `..--::://///////::--..`                                      
                                `.-:/++++++++++++++++++++++++++/:-.`                                
                            .-:/++++++++++++++++++++++++++++++++++++/:-.`                           
                        `-:/++++++++++++++++++++++++++++++++++++++++++++/:-`                        
                     `-//++++++++++++++++++++++++++++++++++++++++++++++++++//-`                     
                   .:/++++++++++++++++++++++++++++++++++++++++++++++++++++++++/:.                   
                 ./+++++++..--://++++++++++++++++++++++++++++++++++++++++++++++++/.                 
               ./+++++++++.     ``.-::/++++++++++++++++++++++++++++++++++++++++++++/.               
             .:+++++++++++:           ``-:/++++++++++++++++++++++++++++++++++++++++++/.             
           `:/++++++++++++/               ``-:/++++++++++++++++++++++++++++++++++++++++:`           
          ./+++++++++++++++.                  `-/+++++++++++++++++++++++++++++++++++++++/.          
         -/++++++++++++++++:        `..`        `-/++++++++++++++++++++++++++++++++++++++/-         
        -+++++++++++++++++++`         `-:.        `:+++++++++++++++++++++++++++++++++++++++:        
       :++++++++++++++++++++:           `:/.        :+++++++++++++++++++++++++++++++++++++++:       
      -++++++++++++++++++++++.            ./:`      `/++++++++++++/////::::::::/+++++++++++++:      
     -+++++++++++++++++++++++/             `:/-      :+++++++//:-.``           -++++++++++++++-     
    `/++++++++++++++++++++++++-              :+:     :+++++/-`                -++++++++++++++++`    
    :++++++++++++++++++++++++++-              :+:`   /++++-       `.-.`      -+++++++++++++++++/    
   .++++++++++++++++++++++++++++-              :+/  -++++.     .-:-`        -+++++++++++++++++++.   
   /+++++++++++++++++++++++++++++-             `/+:-++++/   `-/:.         `:++++++++++++++++++++/   
  `+++++++++++++++++++++++++++++++/.            `+++++++- `-/-`          `/++++++++++++++++++++++`  
  -+++++++++++++++++++++++++++++++++/-`     `.-: -++++++:./-           `-++++++++++++++++++++++++-  
  :+++++++++++++++++++++++++++++++++++++////++++- /+++++/.`-:`       `-/+++++++++++++++++++++++++:  
  :+++++++++++++++++++++++++++++++++++++++++++++/ .+++/- ./+++/:---:/++++++++++++++++++++++++++++/  
  /++++++++++++++++++++++++++++++++++++++++++++++` /+:` :++++++++++++++++++++++++++++++++++++++++/  
  :++++++++++++++++++++++++++++++//::----::/+++++. .. ./+++++++++++++++++++++++++++++++++++++++++/  
  :++++++++++++++++++++++++++/.`            ./+++-  `:+++++++++++++++++++++++++++++++++++++++++++:  
  -+++++++++++++++++++++++++++/.    ``.---.`  :++:  :++++++++++++++++++++++++++++++++++++++++++++-  
  `+++++++++++++++++++++++++++++:`       `.--.-++/  -++++++++++++++++++++++++++++++++++++++++++++`  
   /+++++++++++++++++++++++++++++/:.        `-.://  `+++++++++++++++++++++++++++++++++++++++++++/   
   .++++++++++++++++++++++++++++++++/-.````./+/-..   +++++++++++++++++++++++++++++++++++++++++++.   
    /++++++++++++++++++++++++++++++++++////+++++/:   /+++++++++++++++++++++++++++++++++++++++++/    
    `/++++++++++++++++++++++++++++++++++++++++++++   :+++++++++++++++++++++++++++++++++++++++++.    
     -+++++++++++++++++++++++++++++++++++++++++++/   -++++++++++++++++++++++++++++++++++++++++-     
      -++++++++++++++++++++++++++++++++++++++++++/   -+++++++++++++++++++++++++++++++++++++++:      
       :+++++++++++++++++++++++++++++++++++++++++/.`.:++++++++++++++++++++++++++++++++++++++:       
        :+++++++++++++++++++++++++++++++++++++//:://::----::/++++++++++++++++++++++++++++++:        
         -/+++++++++++++++++++++++++++++++///-`   ``        `.:/++++++++++++++++++++++++++-         
          ./+++++++++++++++++++++++/-...-.`                    `/+++++++++++++++++++++++/.          
           `:/+++++++++++++++++++/-`                            `.-/+++++++++++++++++++:`           
             ./+++++++++++++++++:`                                 `:++++++++++++++++/.             
               ./++++++++++++++-                                     ./++++++++++++/-               
                 ./+++++++++++/----------------------------------------++++++++++/-`                
                   .:/++++++++++++++++++++++++++++++++++++++++++++++++++++++++/:.                   
                     `-//++++++++++++++++++++++++++++++++++++++++++++++++++//-`                     
                        `-:/++++++++++++++++++++++++++++++++++++++++++++//-`                        
                           `.-//++++++++++++++++++++++++++++++++++++//-.`                           
                                `.-:/++++++++++++++++++++++++++/::-.                                
                                     ``.--::://////////:::--.``                                     
                                                                

PlantToken is a new cryptocurrency that rewards holders through a weekly lottery system we are calling Suprise Sprouts! 

How does PlantToken reward its holders? If you are holding at least 80,000 PLANTs then you are added to a lottery pool.

Each week a winner is chosen via Chainlink VRF.

Once a winner is selected, they are distributed tokens each day, until all their winnings are fully dispensed.

The winner is then removed from the lottery pool and will be unable to win again.

The cycle repeats itself and then crowns a new winner.

The following tokenomics taxes are on each transaction:
•    A 3% charity tax is given directly to a charity wallet, and dontated monthly.
•    A 2% liquidity tax is taken for direct liquidity boosting.
•    A 2% redistribution tax is taken and given to all holders.
•    A 2% burn tax deflates the token and increases the coin’s value.
•    A 1% lottery tax is taken and given to the lottery wallet, and drawn weekly.


*/




// Imports
import "./SafeMath.sol";
import "./Address.sol";
import "./IBEP20.sol";
import "./Context.sol";
import "./IPancakeFactory.sol";
import "./IPancakeRouter01.sol";
import "./IPancakeRouter02.sol";
import "./SafeBEP20.sol";

import "./VRFConsumerBase.sol"; // VRF for randomness



pragma solidity ^0.8.6;

contract PlantToken is Context, IBEP20, VRFConsumerBase  {

    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;
    using Address for address;

    


    address private ownerOfToken;
    address private previousOwnerOfToken;

    uint256 private totalSupplyOfToken;
    uint8 private totalDecimalsOfToken;
    string private tokenSymbol;
    string private tokenName;

    mapping(address => bool) private isAccountExcludedFromReward;
    address[] private excludedFromRewardAddresses;      // holds the address of the account that is excluded from reward

    mapping(address => bool) private isAccountExcludedFromFee;

    mapping(address => mapping(address => uint256)) private allowanceAmount;

    mapping(address => uint256) private reflectTokensOwned;
    mapping(address => uint256) private totalTokensOwned;


    // RFI Variables....
    uint256 private MAXintNum;
    uint256 private _rTotal;
    uint256 private totalFeeAmount;


    
    uint256 public taxFeePercent;
    uint256 private previousTaxFeePercent;

    uint256 public charityFeePercent;
    uint256 private previousCharityFeePercent;

    uint256 public burnFeePercent;
    uint256 private previousBurnFeePercent;

    uint256 public lotteryFeePercent;
    uint256 private previousLotteryFeePercent;

    uint256 public liquidityFeePercent;
    uint256 private previousLiquidityFeePercent;



    IPancakeRouter02 public pancakeswapRouter;
    address public pancakeswapPair;
    address public routerAddressForDEX;

    bool private inSwapAndLiquify;
    bool public isSwapAndLiquifyEnabled;

    // uint256 public maxTransferAmount;   

    uint256 public numTokensSellToAddToLiquidity;



    // Release Time Stamp
    uint256 releaseUnixTimeStampV1;


    // Addresses
    address public deadAddress;
    address public charityAddress;
    address public lotteryAddress;
    address public teamAddress;
    address public plantContractControllerAddress;

    address public drawingAddress;


    address public deadAddressZero; 
    address public deadAddressOne; 



    // Lottery Tracking Vars
    mapping(address => bool) public isExcludedFromLottery;
    
    uint256 public maxDrawingChances;
    uint256 public initialMaxDrawingChances;
    uint256 public amountNeededForDrawingChance;


    // Single Entry Lottery
    mapping(address => bool) public hasEnoughTokensForLotterySingle;
    mapping(uint256 => address) public lotteryPoolNumberToAddressSingle;      // position to address
    mapping(address => uint256) public lotteryPoolAddressToNumberSingle;      // starting position of entries 
    uint256 public lotteryPoolCounterSingle;


   





    uint256 public lotteryTime;
    address public currentLotteryWinner;


    uint256 public amountToDisperseInDrawingTotal;
    uint256 public amountToDisperseInDrawingPerPeriod;
    uint256 public amountToDisperseInDrawingLeft;

    uint256 public periodsToDisperse;
    uint256 public hoursInPeriodToDisperse;
    uint256 public dispersalTime;

    bool public isLotterySystemEnabled;
    bool public isAddSingleEntrySystemEnabled;
    bool public isRewardSingleEntrySystemEnabled;
    

    bool public isRandomnessFulfilled;
    bool public isCallLotteryReady;




    uint256 public numberToUseForRandomLoopFindWinner;

    

    // Chainlink VRF
    bytes32 private keyHashForLINK;
    uint256 private feeForLINK;
    uint256 public randomResultFromLINKVRF;

    

    // CHANGEIT - For LIVE
    address public linkTokenAddress = 0x404460C6A5EdE2D891e8297795264fDe62ADBB75;
    address public vrfCoordinatorAddress = 0x747973a5A2a4Ae1D3a8fDF5479f1514F65Db9C31;

    // this is for BSC Test NETWORK
    // address public linkTokenAddress = 0x84b9B910527Ad5C03A9Ca831909E21e236EA7b06;
    // address public vrfCoordinatorAddress = 0xa555fC018435bef5A13C6c6870a9d4C11DEC329C;
   
    // CHANGEIT - For LIVE
    //address public linkTokenAddress = 0x404460C6A5EdE2D891e8297795264fDe62ADBB75;
    //address public vrfCoordinatorAddress = 0x747973a5A2a4Ae1D3a8fDF5479f1514F65Db9C31;


  



    // Events
    event MinTokensBeforeSwapUpdated(uint256 minTokensBeforeSwap);
    event SwapAndLiquifyEnabledUpdated(bool enabled);
    event SwapAndLiquify(uint256 tokensSwapped, uint256 ethReceived, uint256 tokensIntoLiqudity);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    event RandomNumberPickedSingle(uint256 randomNumber);
    event LoopBrokenTooManyDrawingsSingle(uint256 randomExpansionCounter);

   
    event RandomNumberDeterminedSingle(uint randomNum);
    

    event WinnerPickedS(address winnerAddress);




    constructor () VRFConsumerBase(vrfCoordinatorAddress, linkTokenAddress){

        // Fee Addresses
        deadAddress = 0x000000000000000000000000000000000000dEaD;
        charityAddress = 0xBD426AFC2cFF219Ee66FAD65d522445F5e20ce90;
        lotteryAddress = 0xa2375E604C30Db47C5B897B46210c425823C360c;


        teamAddress = 0x0687e994037e5d5165824B443CD6b2C3cBe31466;    
        drawingAddress = 0x16B9F15D9aC12d26AF380A283cEa9621aAFe0b42;

        plantContractControllerAddress = 0xbF9F8FC9e4548cD29f0CaB6217Ae916c8b4b8FF8;


        deadAddressZero = 0x0000000000000000000000000000000000000000; 
        deadAddressOne = 0x0000000000000000000000000000000000000001; 


        amountToDisperseInDrawingTotal = 0;
        amountToDisperseInDrawingPerPeriod = 0;
        amountToDisperseInDrawingLeft = 0;


        periodsToDisperse = 7; // CHANGEIT - must change to 7 here for days
        // periodsToDisperse = 2;

        hoursInPeriodToDisperse = 24 hours;  // CHANGEIT - must change to 24 hours here
        // hoursInPeriodToDisperse = 1 minutes;
        


        maxDrawingChances = 25;
        initialMaxDrawingChances = maxDrawingChances;
        amountNeededForDrawingChance = 80000 * 10**9;
        lotteryTime = block.timestamp.add(periodsToDisperse.mul(hoursInPeriodToDisperse));
        dispersalTime = 0;
        currentLotteryWinner = 0x000000000000000000000000000000000000dEaD;


        ownerOfToken = plantContractControllerAddress;
        emit OwnershipTransferred(address(0), _msgSender());

        totalSupplyOfToken = 161211420 * 10**9;
        totalDecimalsOfToken = 9;

        MAXintNum = ~uint256(0);
        _rTotal = (MAXintNum - (MAXintNum % totalSupplyOfToken));       
        
        tokenSymbol = "PLANT";  
        tokenName = "PlantToken";   
        
        
        // CHANGEIT YOU MUST CHANGE TO ZERO FOR DXSALE
        
         // charityFeePercent = 3; 
        charityFeePercent = 0; 
        previousCharityFeePercent = charityFeePercent;
        // taxFeePercent = 2;
        taxFeePercent = 0;
        previousTaxFeePercent = taxFeePercent;
        // burnFeePercent = 2; 
        burnFeePercent = 0; 
        previousBurnFeePercent = burnFeePercent;
        // liquidityFeePercent = 2;
        liquidityFeePercent = 0;
        previousLiquidityFeePercent = liquidityFeePercent;
        // lotteryFeePercent = 1; 
        lotteryFeePercent = 0; 
        previousLotteryFeePercent = lotteryFeePercent;
        

    
        isSwapAndLiquifyEnabled = false;       // CHANGEIT set to false for launch  You must change it to true after dxsale

        numTokensSellToAddToLiquidity = 10 * 10**11 * 10**9;  



        reflectTokensOwned[owner()] = _rTotal; 
        emit Transfer(address(0), owner(), totalSupplyOfToken);    // emits event of the transfer of the supply from dead to owner   



        // V2 Router - 0x10ED43C718714eb63d5aA57B78B54704E256024E   // CHANGEIT - this is the one you want for live

        // 0x10ED43C718714eb63d5aA57B78B54704E256024E = LIVE PancakeSwap ROUTER V2
        // 0x73feaa1eE314F8c655E354234017bE2193C9E24E = LIVE PancakeSwap Staking Contract
        // 0xA527a61703D82139F8a06Bc30097cC9CAA2df5A6 = LIVE PancakeSwap CAKE
        // 0x1B96B92314C44b159149f7E0303511fB2Fc4774f = LIVE PancakeSwap BUSD
        // 0xfa249Caa1D16f75fa159F7DFBAc0cC5EaB48CeFf = LIVE PancakeSwap FACTORY (Bunny Factory?) 

        // 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D = TESTNET/LIVE Uniswap Ropsten and Rinkeby ROUTER
        // 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f = TESTNET/LIVE Uniswap FACTORY
        // uniswap v3 factory 0x1F98431c8aD98523631AE4a59f267346ea31F984

        // 0x6725F303b657a9451d8BA641348b6761A6CC7a17 = TESTNET PancakeSwap FACTORY
        // 0xD99D1c33F9fC3444f8101754aBC46c52416550D1 = TESTNET PancakeSwap ROUTER


        // Address for Testing with https://pancake.kiemtienonline360.com/#/swap
        // 0x9Ac64Cc6e4415144C455BD8E4837Fea55603e5c3
        // You will need to update the pair address if you do this
        

        routerAddressForDEX = 0x10ED43C718714eb63d5aA57B78B54704E256024E;       // CHANGEIT - change this to real pancakeswap router
        // routerAddressForDEX = 0x9Ac64Cc6e4415144C455BD8E4837Fea55603e5c3;       // For TestNET



        IPancakeRouter02 pancakeswapRouterLocal = IPancakeRouter02(routerAddressForDEX);      // gets the router
        pancakeswapPair = IPancakeFactory(pancakeswapRouterLocal.factory()).createPair(address(this), pancakeswapRouterLocal.WETH());     // Creates the pancakeswap pair   
        pancakeswapRouter = pancakeswapRouterLocal;   // set the rest of the contract variables in the global router variable from the local one


        // Exclude from fees
        isAccountExcludedFromFee[owner()] = true; 
        isAccountExcludedFromFee[address(this)] = true; 
        isAccountExcludedFromFee[drawingAddress] = true;  
        isAccountExcludedFromFee[teamAddress] = true;  
        isAccountExcludedFromFee[lotteryAddress] = true;  
        isAccountExcludedFromFee[charityAddress] = true;  

        
        


        // Excluding basic addresses from lottery
        isExcludedFromLottery[owner()] = true;
        isExcludedFromLottery[deadAddress] = true;
        isExcludedFromLottery[deadAddressZero] = true;
        isExcludedFromLottery[deadAddressOne] = true;
        isExcludedFromLottery[drawingAddress] = true;
        isExcludedFromLottery[teamAddress] = true;
        isExcludedFromLottery[lotteryAddress] = true;
        isExcludedFromLottery[charityAddress] = true;
        isExcludedFromLottery[routerAddressForDEX] = true;
        isExcludedFromLottery[pancakeswapPair] = true;
        isExcludedFromLottery[address(this)] = true;



 

        
        lotteryPoolCounterSingle = 0;
        isLotterySystemEnabled = false;  // CHANGEIT set to false for launch  You must change it to true after dxsale

        isAddSingleEntrySystemEnabled  = true;
        isRewardSingleEntrySystemEnabled  = false;      // CHANGEIT - if something goes wrong in this system, turn this on, and set multi to false

        

        numberToUseForRandomLoopFindWinner = 25;

        isRandomnessFulfilled = false;
        isCallLotteryReady = true;  // should always be set to true

        // chainlink vrf  
        // CHANGEIT - live net here
        keyHashForLINK = 0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c;
        feeForLINK = 0.2 * 10 ** 18; // 0.2 LINK (Varies by network)


        // this is for BSC Test Network
        // keyHashForLINK = 0xcaf3c3727e033261d383b315559476f48034c13b18f8cafed4d871abe5049186;
        // feeForLINK = 0.1 * 10 ** 18; // 0.2 LINK (Varies by network)
        
        // CHANGEIT - live net here
        //keyHashForLINK = 0xc251acd21ec4fb7f31bb8868288bfdbaeb4fbfec2df3735ddbd4f7dc8d60103c;
        //feeForLINK = 0.2 * 10 ** 18; // 0.2 LINK (Varies by network)





        releaseUnixTimeStampV1 = block.timestamp;     // gets the block timestamp so we can know when it was deployed
    }




    ////////////////////////////// ACCESS CONTROL FUNCTIONS //////////////////////////////
    function owner() public view returns (address) {
        return ownerOfToken;        // Returns the address of the current owner.
    }

    function getOwner() external view override returns (address){
        return owner();     // gets current owner address
    }

    modifier onlyOwner() {
        require(ownerOfToken == _msgSender(), "Ownable: caller is not the owner");  // Throws if called by any account other than the owner.
        _;      // when using a modifier, the code from the function is inserted here. // if multiple modifiers then the previous one inherits the next one's modifier code
    }

    function transferOwnership(address newOwner) public onlyOwner() {     // changes ownership
        require(newOwner != address(0), "Ownable: new owner is the zero address");   
        emit OwnershipTransferred(ownerOfToken, newOwner);
        previousOwnerOfToken = ownerOfToken;
        ownerOfToken = newOwner;
    }
    ////////////////////////////// ACCESS CONTROL FUNCTIONS //////////////////////////////
    





    ////////////////////////////// BASIC INFO FUNCTIONS //////////////////////////////
    function decimals() public view override returns (uint8) {
        return totalDecimalsOfToken;  
    }

    function symbol() public view override returns (string memory) {
        return tokenSymbol;   
    }

    function name() public view override returns (string memory) {
        return tokenName;   
    }

    function totalSupply() external view override returns (uint256){
        return totalSupplyOfToken;   
    }

    function balanceOf(address account) public view override returns (uint256) {
        if (isAccountExcludedFromReward[account]) {   
            return totalTokensOwned[account];
        }
        return tokenFromReflection(reflectTokensOwned[account]);
    }
    
    function getNowBlockTime() public view returns (uint) {
        return block.timestamp;     // gets the current time and date in Unix timestamp
    }

    function releaseUnixTimeDate() public view returns (uint256) {
        return releaseUnixTimeStampV1;
    }
    ////////////////////////////// BASIC INFO FUNCTIONS //////////////////////////////










    ////////////////////////////// TRANSFER FUNCTIONS //////////////////////////////
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        transferInternal(_msgSender(), recipient, amount); // transfers with fees applied
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        transferInternal(sender, recipient, amount); 
        approveInternal(sender, _msgSender(), allowanceAmount[sender][_msgSender()].sub(amount, "BEP20: transfer amount exceeds allowance"));
        return true;
    }

    function getTaxValues(uint256 transferAmount) private view returns (uint256[6] memory) {


        uint256[6] memory taxLiqCharityBurnLotteryFeeArray;
        taxLiqCharityBurnLotteryFeeArray[0] = transferAmount.mul(taxFeePercent).div(10**2);    // calculate Tax Fee
        taxLiqCharityBurnLotteryFeeArray[1] = transferAmount.mul(liquidityFeePercent).div(10**2);   // calculate Liquidity Fee
        taxLiqCharityBurnLotteryFeeArray[2] = transferAmount.mul(charityFeePercent).div(10**2);   // calculate Charity Fee
        taxLiqCharityBurnLotteryFeeArray[3] = transferAmount.mul(burnFeePercent).div(10**2);   // calculate Burn Fee
        taxLiqCharityBurnLotteryFeeArray[4] = transferAmount.mul(lotteryFeePercent).div(10**2);   // calculate Lottery Fee
        taxLiqCharityBurnLotteryFeeArray[5] = transferAmount.sub(taxLiqCharityBurnLotteryFeeArray[0]).sub(taxLiqCharityBurnLotteryFeeArray[1])
            .sub(taxLiqCharityBurnLotteryFeeArray[2]).sub(taxLiqCharityBurnLotteryFeeArray[3]).sub(taxLiqCharityBurnLotteryFeeArray[4]);

        return (taxLiqCharityBurnLotteryFeeArray);
    }

    
    function getReflectionValues(uint256 transferAmount, uint256 taxFee, uint256 taxLiquidity, uint256 taxCharityFee, uint256 taxBurnFee, uint256 taxLotteryFee, uint256 currentRate) 
    private pure returns (uint256, uint256, uint256){
        uint256 reflectionAmount = transferAmount.mul(currentRate);
        uint256 reflectionFee = taxFee.mul(currentRate);
        uint256 reflectionLiquidity = taxLiquidity.mul(currentRate);
        uint256 reflectionFeeCharity = taxCharityFee.mul(currentRate);
        uint256 reflectionFeeBurn = taxBurnFee.mul(currentRate);
        uint256 reflectionFeeLottery = taxLotteryFee.mul(currentRate);
        uint256 reflectionTransferAmount = reflectionAmount.sub(reflectionFee).sub(reflectionLiquidity);
        reflectionTransferAmount = reflectionTransferAmount.sub(reflectionFeeCharity).sub(reflectionFeeBurn).sub(reflectionFeeLottery);
        return (reflectionAmount, reflectionTransferAmount, reflectionFee);
    }

    function getTaxAndReflectionValues(uint256 tAmount) private view returns (uint256,uint256,uint256, uint256[6] memory) {

        (uint256[6] memory taxLiqCharityBurnLotteryFeeArray) = getTaxValues(tAmount);
        (uint256 reflectAmount, uint256 reflectTransferAmount, uint256 reflectFee) = 
            getReflectionValues(tAmount, taxLiqCharityBurnLotteryFeeArray[0], taxLiqCharityBurnLotteryFeeArray[1], 
                taxLiqCharityBurnLotteryFeeArray[2], taxLiqCharityBurnLotteryFeeArray[3], taxLiqCharityBurnLotteryFeeArray[4], getReflectRate());
        return (reflectAmount, reflectTransferAmount, reflectFee, taxLiqCharityBurnLotteryFeeArray);

    }

    ////////////////////////////// TRANSFER FUNCTIONS //////////////////////////////












    ////////////////////////////// ALLOWANCE FUNCTIONS //////////////////////////////
    function allowance(address ownerAddr, address spender) external view override returns (uint256) { 
        return allowanceAmount[ownerAddr][spender];    // Returns remaining tokens that spender is allowed during {approve} or {transferFrom} 
    }

    function approveInternal(address ownerAddr, address spender, uint256 amount) private { 
        // This is internal function is equivalent to `approve`, and can be used to e.g. set automatic allowances for certain subsystems, etc.
        require(ownerAddr != address(0), "BEP20: approve from the zero address");
        require(spender != address(0), "BEP20: approve to the zero address");
        allowanceAmount[ownerAddr][spender] = amount;       // approves the amount to spend by the ownerAddr
        emit Approval(ownerAddr, spender, amount);
    }

    function approve(address spender, uint256 amount) public override returns (bool){
        approveInternal(_msgSender(), spender, amount);     
        return true;
    }

    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool){
        approveInternal(_msgSender(), spender, allowanceAmount[_msgSender()][spender].add(addedValue));
        return true;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool){
        approveInternal(_msgSender(),spender,allowanceAmount[_msgSender()][spender].sub(subtractedValue,"BEP20: decreased allowance below zero"));
        return true;
    }
    ////////////////////////////// ALLOWANCE FUNCTIONS //////////////////////////////

    














    ////////////////////////////// RFI FUNCTIONS //////////////////////////////
    function totalFees() public view returns (uint256) {
        return totalFeeAmount;
    }

    function deliverReflectTokens(uint256 tAmount) public {     // this is just a burn for Reflect Tokens
        address sender = _msgSender();           
        require(!isAccountExcludedFromReward[sender],"Excluded addresses cannot call this function");
        (uint256 rAmount, , , ) = getTaxAndReflectionValues(tAmount);
        reflectTokensOwned[sender] = reflectTokensOwned[sender].sub(rAmount);
        _rTotal = _rTotal.sub(rAmount);
        totalFeeAmount = totalFeeAmount.add(tAmount);     
    }

    function reflectionFromToken(uint256 tAmount, bool deductTransferFee) public view returns (uint256) {
        require(tAmount <= totalSupplyOfToken, "Amount must be less than supply");         
        (uint256 rAmount, uint256 rTransferAmount, , ) = getTaxAndReflectionValues(tAmount);
        if(deductTransferFee){
            return rTransferAmount;     // if we are deducting the transfer fee, then use this amount, otherwise return the regular Amount
        }
        else{
            return rAmount;
        }
    }

    function tokenFromReflection(uint256 rAmount) public view returns (uint256){  
        require(rAmount <= _rTotal, "Amount must be less than total reflections");
        uint256 currentRate = getReflectRate();
        return rAmount.div(currentRate);        // gets the amount of the reflection
    }

    function isExcludedFromReward(address account) public view returns (bool) {
        return isAccountExcludedFromReward[account];
    }

    function excludeFromReward(address account) public onlyOwner() {
        // if there is ever cross change compatability, then in the future you will need to include Uniswap Addresses, but for now Pancake Swap works, just one router address works
        require(account != routerAddressForDEX, "Account must not be PancakeSwap Router");    // don't ever exclude the Uniswap or Pancake Swap router
        require(!isAccountExcludedFromReward[account], "Account is already excluded");
        if (reflectTokensOwned[account] > 0) {
            totalTokensOwned[account] = tokenFromReflection(reflectTokensOwned[account]);   // gets the reflect tokens and gives them to the address before excluding it
        }
        isAccountExcludedFromReward[account] = true;
        excludedFromRewardAddresses.push(account);
    }

    function includeInReward(address account) external onlyOwner() {
        require(isAccountExcludedFromReward[account], "Account is already included");
        for (uint256 i = 0; i < excludedFromRewardAddresses.length; i++) {
            if (excludedFromRewardAddresses[i] == account) {
                excludedFromRewardAddresses[i] = excludedFromRewardAddresses[excludedFromRewardAddresses.length - 1];   // finds and removes the address from the excluded addresses
                totalTokensOwned[account] = 0;  // sets the reward tokens to 0
                isAccountExcludedFromReward[account] = false;
                excludedFromRewardAddresses.pop();
                break;
            }
        }
    }

    function excludeFromFee(address account) public onlyOwner() {
        isAccountExcludedFromFee[account] = true;
    }

    function includeInFee(address account) public onlyOwner() {
        isAccountExcludedFromFee[account] = false;
    }

    function isExcludedFromFee(address account) public view returns (bool) {
        return isAccountExcludedFromFee[account];
    }

    function takeReflectFee(uint256 reflectFee, uint256 taxFee) private {
        _rTotal = _rTotal.sub(reflectFee);      // subtracts the fee from the reflect totals
        totalFeeAmount = totalFeeAmount.add(taxFee);    // adds to the toal fee amount
    }

    function getReflectRate() private view returns (uint256) {
        (uint256 reflectSupply, uint256 tokenSupply) = getCurrentSupplyTotals();       // gets the current reflect supply, and the total token supply.
        return reflectSupply.div(tokenSupply);        // to get the rate, we will divide the reflect supply by the total token supply.
    }

    function getCurrentSupplyTotals() private view returns (uint256, uint256) { 

        uint256 rSupply = _rTotal;      // total reflections
        uint256 tSupply = totalSupplyOfToken;       // total supply

        for (uint256 i = 0; i < excludedFromRewardAddresses.length; i++) {
            if ((reflectTokensOwned[excludedFromRewardAddresses[i]] > rSupply) || (totalTokensOwned[excludedFromRewardAddresses[i]] > tSupply)){
                return (_rTotal, totalSupplyOfToken);       // if any address that is excluded has a greater reflection supply or great than the total supply then we just return that
            } 
            rSupply = rSupply.sub(reflectTokensOwned[excludedFromRewardAddresses[i]]);  // calculates the reflection supply by subtracting the reflect tokens owned from every address
            tSupply = tSupply.sub(totalTokensOwned[excludedFromRewardAddresses[i]]);    // calculates the total token supply by subtracting the total tokens owned from every address
            // I think this will eventually leave the supplies with what's left in the PancakeSwap router
        }

        if (rSupply < _rTotal.div(totalSupplyOfToken)){     // checks to see if the reflection total rate is greater than the reflection supply after subtractions
            return (_rTotal, totalSupplyOfToken);
        } 

        return (rSupply, tSupply);
    }
    ////////////////////////////// RFI FUNCTIONS //////////////////////////////

















    ////////////////////////////// TAX FUNCTIONS //////////////////////////////
    function setTaxFeePercent(uint256 newTaxFeePercent) external onlyOwner() {
        require(newTaxFeePercent <= 5, "New percent must be 5 or less");
        taxFeePercent = newTaxFeePercent;
    }

    function setCharityFeePercent(uint256 newCharityFee) external onlyOwner() {
        require(newCharityFee <= 5, "New percent must be 5 or less");
        charityFeePercent = newCharityFee;
    }

    function setBurnFeePercent(uint256 newBurnFee) external onlyOwner() {
        require(newBurnFee <= 5, "New percent must be 5 or less");
        burnFeePercent = newBurnFee;
    }

    function setLotteryFeePercent(uint256 newLotteryFee) external onlyOwner() {
        require(newLotteryFee <= 5, "New percent must be 5 or less");
        lotteryFeePercent = newLotteryFee;
    }

    function setLiquidityFeePercent(uint256 newLiquidityFeePercent) external onlyOwner() {
        require(newLiquidityFeePercent <= 5, "New percent must be 5 or less");
        liquidityFeePercent = newLiquidityFeePercent;
    }

    function takeLiquidityFee(uint256 tLiquidity) private {
        uint256 currentRate = getReflectRate();
        uint256 rLiquidity = tLiquidity.mul(currentRate);
        reflectTokensOwned[address(this)] = reflectTokensOwned[address(this)].add(rLiquidity);  // if included gives the reward to their reflect tokens owned part
        if (isAccountExcludedFromReward[address(this)]){
            totalTokensOwned[address(this)] = totalTokensOwned[address(this)].add(tLiquidity);  // if excluded from reward gives it to their tokens, 
        }
    }

    function takeCharityFee(uint256 taxCharityFee) private {
        uint256 currentRate = getReflectRate();
        uint256 rCharityTaxFee = taxCharityFee.mul(currentRate);
        reflectTokensOwned[charityAddress] = reflectTokensOwned[charityAddress].add(rCharityTaxFee); 
        if (isAccountExcludedFromReward[charityAddress]){
            totalTokensOwned[charityAddress] = totalTokensOwned[charityAddress].add(taxCharityFee);
        }
    }

    function takeBurnFee(uint256 taxBurnFee) private {
        uint256 currentRate = getReflectRate();
        uint256 rBurnTaxFee = taxBurnFee.mul(currentRate);
        reflectTokensOwned[deadAddress] = reflectTokensOwned[deadAddress].add(rBurnTaxFee); 
        if (isAccountExcludedFromReward[deadAddress]){
            totalTokensOwned[deadAddress] = totalTokensOwned[deadAddress].add(taxBurnFee);
        }
    }

    function takeLotteryFee(uint256 taxLotteryFee) private {
        uint256 currentRate = getReflectRate();
        uint256 rLotteryTaxFee = taxLotteryFee.mul(currentRate);
        reflectTokensOwned[lotteryAddress] = reflectTokensOwned[lotteryAddress].add(rLotteryTaxFee); 
        if (isAccountExcludedFromReward[lotteryAddress]){
            totalTokensOwned[lotteryAddress] = totalTokensOwned[lotteryAddress].add(taxLotteryFee);
        }
    }

    function removeAllFee() private {
        previousTaxFeePercent = taxFeePercent;
        previousCharityFeePercent = charityFeePercent;
        previousBurnFeePercent = burnFeePercent;
        previousLotteryFeePercent = lotteryFeePercent;
        previousLiquidityFeePercent = liquidityFeePercent;

        taxFeePercent = 0;
        charityFeePercent = 0;
        burnFeePercent = 0;
        lotteryFeePercent = 0;
        liquidityFeePercent = 0;
    }

    function restoreAllFee() private {
        taxFeePercent = previousTaxFeePercent;
        charityFeePercent = previousCharityFeePercent;
        burnFeePercent = previousBurnFeePercent;
        lotteryFeePercent = previousLotteryFeePercent;
        liquidityFeePercent = previousLiquidityFeePercent;
    }
    ////////////////////////////// TAX FUNCTIONS //////////////////////////////




 











    ////////////////////////////// LIQ FUNCTIONS //////////////////////////////

    function swapAndLiquify(uint256 contractStoredFeeTokenBalance) private {        // this sells half the tokens when over a certain amount.
        inSwapAndLiquify = true;
        // gets two halves to be used in liquification
        uint256 half1 = contractStoredFeeTokenBalance.div(2);
        uint256 half2 = contractStoredFeeTokenBalance.sub(half1);
        uint256 initialBalance = address(this).balance;     
        // gets initial balance, get exact amount of BNB that swap creates, and make sure the liquidity event doesn't include BNB manually sent to the contract.
        swapTokensForEth(half1); // swaps tokens into BNB to add back into liquidity. Uses half 1
        uint256 newBalance = address(this).balance.sub(initialBalance);     // new Balance calculated after that swap
        addLiquidity(half2, newBalance);     // Adds liquidity to PancakeSwap using Half 2
        emit SwapAndLiquify(half1, newBalance, half2);
        inSwapAndLiquify = false;
    }

    function swapTokensForEth(uint256 tokenAmount) private {
        address[] memory path = new address[](2);
        path[0] = address(this);       // Contract Token Address
        path[1] = pancakeswapRouter.WETH();     // Router Address
        approveInternal(address(this), address(pancakeswapRouter), tokenAmount);        // Why two approvals? Have to approve both halfs
        pancakeswapRouter.swapExactTokensForETHSupportingFeeOnTransferTokens(tokenAmount, 0, path, address(this), block.timestamp);     // make the swap
    }

    function addLiquidity(uint256 tokenAmount, uint256 ethAmount) private {
        approveInternal(address(this), address(pancakeswapRouter), tokenAmount);        // Why two approvals? Have to approve both halfs
        pancakeswapRouter.addLiquidityETH{value: ethAmount}(address(this),tokenAmount, 0, 0, address(this), block.timestamp);     // adds the liquidity
        // perhaps in the future I might want to change the minimum amounts that are swapped - the 0, 0, parameters
    }

    function setSwapAndLiquifyEnabled(bool enableSwapAndLiquify) external onlyOwner() {     
        isSwapAndLiquifyEnabled = enableSwapAndLiquify;   // allows owner to turn off the liquification fee
        emit SwapAndLiquifyEnabledUpdated(enableSwapAndLiquify);
    }


    function setNumberOfTokensToSwapAndLiquify(uint256 newTokenAmount) external onlyOwner() {      // addition, in version 1 of NIP, this will allow you to set the numTokensSellToAddToLiquidity later on if you need to.
        numTokensSellToAddToLiquidity = newTokenAmount;
    }

    ////////////////////////////// LIQ FUNCTIONS //////////////////////////////


    












    ////////////////////////////// PANCAKESWAP FUNCTIONS //////////////////////////////
    function setRouterAddress(address newRouter) external onlyOwner() {
        routerAddressForDEX = newRouter;
        IPancakeRouter02 pancakeswapRouterLocal = IPancakeRouter02(routerAddressForDEX);      // gets the router
        pancakeswapPair = IPancakeFactory(pancakeswapRouterLocal.factory()).createPair(address(this), pancakeswapRouterLocal.WETH());     // Creates the pancakeswap pair   
        pancakeswapRouter = pancakeswapRouterLocal;   // set the rest of the contract variables in the global router variable from the local one
    }

    function setPairAddress(address newPairAddress) public onlyOwner() {
        pancakeswapPair = newPairAddress;
    }
    ////////////////////////////// PANCAKESWAP FUNCTIONS //////////////////////////////





    ////////////////////////////// CHAINLINK FUNCTIONS //////////////////////////////
    // Setters for Chainlink VRF
    function setKeyHashForLinkVRF(bytes32 newKeyHash) public onlyOwner() {
        keyHashForLINK = newKeyHash;
    }

    function setFeeForLinkVRF(uint256 newFee) public onlyOwner() {
        feeForLINK = newFee;
    }
    ////////////////////////////// CHAINLINK FUNCTIONS //////////////////////////////







    ////////////////////////////// CUSTOM TRANSFER FUNCTIONS //////////////////////////////
    
    function transferInternal(address senderAddr, address receiverAddr, uint256 amount) private {   
        // internal function is equivalent to {transfer}, and can be used to e.g. implement automatic token fees, slashing mechanisms, etc.

        require(senderAddr != address(0), "BEP20: transfer from the zero address");
        require(receiverAddr != address(0), "BEP20: transfer to the zero address");
        require(amount > 0, "Transfer amount must be greater than zero");
        
        uint256 contractStoredFeeTokenBalance = balanceOf(address(this));

        bool overMinContractStoredFeeTokenBalance = false; 
        if(contractStoredFeeTokenBalance >= numTokensSellToAddToLiquidity){  // check to see if there are enough tokens stored from fees in the Contract to justify the Swap
            overMinContractStoredFeeTokenBalance = true;                        // if we did not have a minimum, the gas would eat into the profits generated from the fees.
        }

        if (overMinContractStoredFeeTokenBalance && !inSwapAndLiquify && senderAddr != pancakeswapPair && isSwapAndLiquifyEnabled) {
            contractStoredFeeTokenBalance = numTokensSellToAddToLiquidity;     // the reason this is set to that, is to make sure we get the exact amount we are wanting to swap and liquify   
            swapAndLiquify(contractStoredFeeTokenBalance);   //add liquidity
        }

        bool takeFee = true;    // should fee be taken?
        if (isAccountExcludedFromFee[senderAddr] || isAccountExcludedFromFee[receiverAddr]) {   // if either address is excluded from fee, then set takeFee to false.
            takeFee = false;    
        }


        transferTokens(senderAddr, receiverAddr, amount, takeFee); 
    }

    function transferTokens(address sender, address recipient, uint256 transferAmount, bool takeFee) private {
        if (!takeFee) {
            removeAllFee();
        }

        (uint256 reflectAmount, uint256 reflectTransferAmount,uint256 reflectFee, uint256[6] memory taxLiqCharityBurnLotteryFeeArray) = getTaxAndReflectionValues(transferAmount);

        if(isAccountExcludedFromReward[sender]){    // is the sender address excluded from Reward?
            totalTokensOwned[sender] = totalTokensOwned[sender].sub(transferAmount);
        }
        reflectTokensOwned[sender] = reflectTokensOwned[sender].sub(reflectAmount);

        if(isAccountExcludedFromReward[recipient]){    // is the sender address excluded from Reward?
            totalTokensOwned[recipient] = totalTokensOwned[recipient].add(taxLiqCharityBurnLotteryFeeArray[5]);
        }
        reflectTokensOwned[recipient] = reflectTokensOwned[recipient].add(reflectTransferAmount);

        takeLiquidityFee(taxLiqCharityBurnLotteryFeeArray[1]);   
        takeCharityFee(taxLiqCharityBurnLotteryFeeArray[2]);      
        takeBurnFee(taxLiqCharityBurnLotteryFeeArray[3]);      
        takeLotteryFee(taxLiqCharityBurnLotteryFeeArray[4]);      
        takeReflectFee(reflectFee, taxLiqCharityBurnLotteryFeeArray[0]);

        emit Transfer(sender, recipient, taxLiqCharityBurnLotteryFeeArray[5]);

        if (!takeFee){
            restoreAllFee();
        } 

        if(isLotterySystemEnabled){ // Lotto functions

            if(isAddSingleEntrySystemEnabled){
                checkForLotteryParticipationOrRemovalSingle(recipient);
                checkForLotteryParticipationOrRemovalSingle(sender);
            }

            if(isRewardSingleEntrySystemEnabled){
                weeklyLotterySingle();
                weeklyLotteryFulfillSingle();
            }

    
            lotteryDisperseFromDrawingWallet();
        }
    }
    ////////////////////////////// CUSTOM TRANSFER FUNCTIONS //////////////////////////////

















    ////////////////////////////// SINGLE LOTTERY FUNCTIONS //////////////////////////////

    function checkForLotteryParticipationOrRemovalSingle(address addressToCheck) private {


        if(!isExcludedFromLottery[addressToCheck]){  // if the recipient isn't excluded from the lottery we must check balance and add 

            uint256 currentBalanceOfAddrToCheck = balanceOf(addressToCheck);    

            if(currentBalanceOfAddrToCheck >= amountNeededForDrawingChance){       // make sure they have enough

                if(!hasEnoughTokensForLotterySingle[addressToCheck]){     // if he is not in the pool then add him
                    hasEnoughTokensForLotterySingle[addressToCheck] = true;

                    lotteryPoolCounterSingle = lotteryPoolCounterSingle.add(1);     // increases the lottery pool counter

                    lotteryPoolNumberToAddressSingle[lotteryPoolCounterSingle] = addressToCheck;       // adds him to the lottery pool
                    lotteryPoolAddressToNumberSingle[addressToCheck] = lotteryPoolCounterSingle;        // adds his position to the other mapping
                }

                // don't do anything if he is already in the pool.

            }
            else{
                if(hasEnoughTokensForLotterySingle[addressToCheck]){      // checks to see if they at one point did have enough tokens, remove them out of lotto if they did
                    hasEnoughTokensForLotterySingle[addressToCheck] = false;
                    removeFromLotteryCompletelySingle(addressToCheck);
                }
                // don't do anything if he is already out of the pool
            }

        }

    }
    function checkForLotteryParticipationOrRemovalSingleManual(address addressToCheck) external onlyOwner() {
        checkForLotteryParticipationOrRemovalSingle(addressToCheck);
    }


    function removeFromLotteryCompletelySingle(address addressToRemove) private {    

        uint256 positionInLotto = lotteryPoolAddressToNumberSingle[addressToRemove];       // gets the position of the address to replace

        address addressToMoveToReplace = lotteryPoolNumberToAddressSingle[lotteryPoolCounterSingle];   // gets the address to replace (the address at the end)

        lotteryPoolNumberToAddressSingle[positionInLotto] = addressToMoveToReplace;  // sets the address into the original position 

        lotteryPoolAddressToNumberSingle[addressToMoveToReplace] = positionInLotto;  // sets the position to the address

        lotteryPoolAddressToNumberSingle[addressToRemove] = 0;        // sets it back to zero upon removal

        lotteryPoolNumberToAddressSingle[lotteryPoolCounterSingle] = deadAddressZero;       // sets the other address to the dead address, just in case

        lotteryPoolCounterSingle = lotteryPoolCounterSingle.sub(1);     // decreases the lottery pool counter

    }


    function weeklyLotterySingle() private {     // gets called at the end of every transfer

        // single entry version
        if(block.timestamp >= lotteryTime && lotteryPoolCounterSingle > 0){     

            if(amountToDisperseInDrawingLeft == 0 && LINK.balanceOf(address(this)) >= feeForLINK){ 

                uint256 currentLotteryWalletBalance = balanceOf(lotteryAddress);
                if(currentLotteryWalletBalance > 0){

                    if(isCallLotteryReady){
                        isCallLotteryReady = false;
                        bytes32 requestIdForRandomNum = getRandomNumber(block.timestamp);   // gets random number to determine lottery winner
                    }
                }
            }
        }
            
    }
    function weeklyLotteryManualSingle() external onlyOwner() {
        weeklyLotterySingle();
    }


    function weeklyLotteryFulfillSingle() private {


        uint256 currentLotteryWalletBalance = balanceOf(lotteryAddress);

        if(isRandomnessFulfilled){
            isRandomnessFulfilled = false;

            currentLotteryWinner = lotteryPoolNumberToAddressSingle[randomResultFromLINKVRF];      // set current lottery winner
            emit RandomNumberPickedSingle(randomResultFromLINKVRF);

            uint256 randomExpansionCounter = 0;
            while (currentLotteryWinner == deadAddressZero) {   // if he picks a dead address, we need to loop to find the winner, max 10 times for gas concerns
                
                uint256 newRandNumber = (uint256(keccak256(abi.encode(randomResultFromLINKVRF, randomExpansionCounter))).mod(lotteryPoolCounterSingle)).add(1);
                emit RandomNumberPickedSingle(newRandNumber);
                currentLotteryWinner = lotteryPoolNumberToAddressSingle[newRandNumber];      // set current lottery winner
                randomExpansionCounter = randomExpansionCounter.add(1);

                if(randomExpansionCounter > numberToUseForRandomLoopFindWinner){        // 25 is risking it, but I think it can be done., we can set lower later
                    emit LoopBrokenTooManyDrawingsSingle(randomExpansionCounter);
                    break;
                }
            }


            if(currentLotteryWinner != deadAddress){    // failsafe

                transferTokensForLotteryToDrawingOrWinner(lotteryAddress, drawingAddress, currentLotteryWalletBalance, false);    // transfers the tokens to the drawing address

                uint256 currentDrawingWalletBalance = balanceOf(drawingAddress);
                amountToDisperseInDrawingTotal = currentDrawingWalletBalance;
                amountToDisperseInDrawingLeft = currentDrawingWalletBalance;
                amountToDisperseInDrawingPerPeriod = currentDrawingWalletBalance.div(periodsToDisperse);
                dispersalTime = block.timestamp;
                lotteryTime = lotteryTime.add(periodsToDisperse.mul(hoursInPeriodToDisperse)); // reset the lotteryTime back to the block until it's time for a new drawing 

                isExcludedFromLottery[currentLotteryWinner] = true;     // exclude him and remove chances from lotto pool
                removeFromLotteryCompletelySingle(currentLotteryWinner);

                emit WinnerPickedS(currentLotteryWinner);

                isCallLotteryReady = true;

            } 
        }
    }

    ////////////////////////////// SINGLE LOTTERY FUNCTIONS //////////////////////////////












    ////////////////////////////// LOTTERY CORE FUNCTIONS //////////////////////////////
    function lotteryDisperseFromDrawingWallet() private {      // gets called at the end of every transfer
        
        if(amountToDisperseInDrawingLeft > 0){  // make sure it has tokens to disperse
            if(block.timestamp >= dispersalTime) {    // is it time to disperse again?

                uint256 currentDrawingWalletBalance = balanceOf(drawingAddress);
                if(currentDrawingWalletBalance >= amountToDisperseInDrawingPerPeriod){

                    if(amountToDisperseInDrawingPerPeriod > currentDrawingWalletBalance.sub(amountToDisperseInDrawingPerPeriod) ){   
                        // flag to send it all of the winnings out, as trace amounts will be left over.
                        transferTokensForLotteryToDrawingOrWinner(drawingAddress, currentLotteryWinner, balanceOf(drawingAddress), false);
                        amountToDisperseInDrawingLeft = 0;
                    }
                    else{   
                        // send the corret partial drawing amount
                        transferTokensForLotteryToDrawingOrWinner(drawingAddress, currentLotteryWinner, amountToDisperseInDrawingPerPeriod, false);
                        amountToDisperseInDrawingLeft = amountToDisperseInDrawingLeft.sub(amountToDisperseInDrawingPerPeriod);
                    }

                }       
                else if(currentDrawingWalletBalance > 0){       // failsafe, just incase there gets any left over.
                    // this will just get rid of any remainder to the winner, there might be instances where there are left over tokens
                    transferTokensForLotteryToDrawingOrWinner(drawingAddress, currentLotteryWinner, amountToDisperseInDrawingLeft, false);
                    amountToDisperseInDrawingLeft = 0;
                }
                
                dispersalTime = dispersalTime.add(hoursInPeriodToDisperse);
            }
        }
    }
    function lotteryDisperseFromDrawingWalletManual() external onlyOwner() {
        lotteryDisperseFromDrawingWallet();
    }


    
    function getRandomNumber(uint256 userProvidedSeed) private returns (bytes32 requestId) {     // Requests randomness from a user-provided seed
        require(LINK.balanceOf(address(this)) >= feeForLINK, "Not enough LINK - fill contract with faucet");
        return requestRandomness(keyHashForLINK, feeForLINK, userProvidedSeed);
    }
    
    
    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {   // Callback function used by VRF Coordinator
        if(isRewardSingleEntrySystemEnabled){
            uint256 randomNum = (randomness.mod(lotteryPoolCounterSingle));
            emit RandomNumberDeterminedSingle(randomNum);
            randomNum = randomNum.add(1);
            emit RandomNumberDeterminedSingle(randomNum);
            randomResultFromLINKVRF = randomNum;       // gets a random element to use with the lotto mapping  // add 1 to go from 1 to lotto number, 
        }
        
        isRandomnessFulfilled = true;
    }
    


    // TestFunctions Here

    function expandExampleTestSingle(uint256 randomValue, uint256 n) public view returns (uint256[] memory expandedValues) {
        expandedValues = new uint256[](n);
        for (uint256 i = 0; i < n; i++) {
            expandedValues[i] = (uint256(keccak256(abi.encode(randomValue, i))).mod(lotteryPoolCounterSingle)).add(1);
        }
        return expandedValues;
    }



    function getSecondsUntilNextLotto() public view returns (uint256 secondsUntilNextLotto){
        if(block.timestamp >= lotteryTime){
            return 0;
        }
        if(lotteryTime.sub(block.timestamp) > 0){
            return lotteryTime.sub(block.timestamp);
        }
        return 0;
    }

    function setLotterytime(uint256 newLotteryTime) external onlyOwner() {
        lotteryTime = newLotteryTime;
    }

    function setMaxDrawingChances(uint256 newMaxDrawingChances) public onlyOwner() {
        require(newMaxDrawingChances <= initialMaxDrawingChances, "New max drawing chances cannot be over the initial Max Drawin Changes");
        maxDrawingChances = newMaxDrawingChances;
    }

    function setAmountNeededForDrawingChance(uint256 newAmountNeededForDrawingChance) public onlyOwner() {
        amountNeededForDrawingChance = newAmountNeededForDrawingChance;
    }

    function setPeriodsToDisperse(uint256 newPeriodsToDisperse) public onlyOwner() {
        periodsToDisperse = newPeriodsToDisperse;
    }

    function setHoursInPeriodToDisperse(uint256 newHoursInPeriodToDisperse) public onlyOwner() {
        hoursInPeriodToDisperse = newHoursInPeriodToDisperse;
    }

    function setLotterySystemEnabled(bool isLotterySystemEnabledNew) public onlyOwner() {
        isLotterySystemEnabled = isLotterySystemEnabledNew;
    }


    function setAddSingleEntrySystemEnabled(bool isEnabledNew) public onlyOwner() {
        isAddSingleEntrySystemEnabled = isEnabledNew;
    }

    function setRewardSingleEntrySystemEnabled(bool isEnabledNew) public onlyOwner() {
        isRewardSingleEntrySystemEnabled = isEnabledNew;
    }

    function setNumberToUseForRandomLoopFindWinner(uint256 newNumber) public onlyOwner() {
        numberToUseForRandomLoopFindWinner = newNumber;
    }


    



    function excludeOrIncludeFromLotterySingle(address addressToExcludeInclude, bool setIsExcludedFromLottery) public onlyOwner() {
        isExcludedFromLottery[addressToExcludeInclude] = setIsExcludedFromLottery;
        if(setIsExcludedFromLottery){
            removeFromLotteryCompletelySingle(addressToExcludeInclude); 
        }
    }

    function excludeOrIncludeJustFromLottery(address addressToExcludeInclude, bool setIsExcludedFromLottery) public onlyOwner() {
        isExcludedFromLottery[addressToExcludeInclude] = setIsExcludedFromLottery;
    }

    function transferTokensForLotteryToDrawingOrWinner(address sender, address recipient, uint256 transferAmount, bool takeFee) private {
        if (!takeFee) {
            removeAllFee();
        }
        (uint256 reflectAmount, uint256 reflectTransferAmount,uint256 reflectFee, uint256[6] memory taxLiqCharityBurnLotteryFeeArray) = getTaxAndReflectionValues(transferAmount);

        if(isAccountExcludedFromReward[sender]){    // is the sender address excluded from Reward?
            totalTokensOwned[sender] = totalTokensOwned[sender].sub(transferAmount);
        }
        reflectTokensOwned[sender] = reflectTokensOwned[sender].sub(reflectAmount);

        if(isAccountExcludedFromReward[recipient]){    // is the sender address excluded from Reward?
            totalTokensOwned[recipient] = totalTokensOwned[recipient].add(taxLiqCharityBurnLotteryFeeArray[5]);
        }
        reflectTokensOwned[recipient] = reflectTokensOwned[recipient].add(reflectTransferAmount);

        takeLiquidityFee(taxLiqCharityBurnLotteryFeeArray[1]);   
        takeCharityFee(taxLiqCharityBurnLotteryFeeArray[2]);      
        takeBurnFee(taxLiqCharityBurnLotteryFeeArray[3]);      
        takeLotteryFee(taxLiqCharityBurnLotteryFeeArray[4]);      
        takeReflectFee(reflectFee, taxLiqCharityBurnLotteryFeeArray[0]);

        emit Transfer(sender, recipient, taxLiqCharityBurnLotteryFeeArray[5]);

        if (!takeFee){
            restoreAllFee();
        } 
    }
    ////////////////////////////// LOTTERY CORE FUNCTIONS //////////////////////////////






    


    ////////////////////////////// RESCUE FUNCTIONS //////////////////////////////
    function payableTeamWalletAddr() private view returns (address payable) {   // gets the sender of the payable address
        address payable payableMsgSender = payable(address(teamAddress));      
        return payableMsgSender;
    }

    function rescueBNBSentToContractAddress() external onlyOwner()  {   
        payableTeamWalletAddr().transfer(address(this).balance);
    }

    function rescueBEP20SentToContractAddress(IBEP20 tokenToWithdraw) external onlyOwner() {
        tokenToWithdraw.safeTransfer(payableTeamWalletAddr(), tokenToWithdraw.balanceOf(address(this)));
    }

    function rescueAllContractToken() external onlyOwner() {
        transferInternal(address(this), payableTeamWalletAddr(), balanceOf(address(this)));
    }

    function rescueAmountContractToken(uint256 amount) external onlyOwner() {
        transferInternal(address(this), payableTeamWalletAddr(), amount);
    }
    ////////////////////////////// RESCUE FUNCTIONS //////////////////////////////







    receive() external payable {}       // Oh it's payable alright.


}