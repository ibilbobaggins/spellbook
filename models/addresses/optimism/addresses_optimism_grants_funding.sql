{{config(alias='grants_funding',
	post_hook='{{ expose_spells(\'["optimism"]\',
		"sector",
		"addresses",
		\'["msilb7"]\') }}')}}

SELECT
	category, lower(address) AS address
	, proposal_name, funding_source,
	COALESCE(project_name, proposal_name) AS project_name

FROM (VALUES

 ('OP Foundation',	'0xfedfaf1a10335448b7fa0268f56d2b44dbd357de',	'OP Foundation',	'Airdrop #1 Distributor',	NULL)
,('OP Foundation',	'0x2501c477D0A35545a387Aa4A3EEe4292A9a8B3F0',	'OP Foundation',	'OP Foundation Wallet',	NULL)
,('Project',	'0x0d162447b8df47c2e7910441bf3c8c1b55b9b124',	'Uniswap V3',	'Phase 0',	NULL)
,('Project',	'0x1bd315e3f029083da8731a6b1c6f2959a0d15376',	'1inch',	'Phase 0',	NULL)
,('Project',	'0xf5e9d550c3c50364d630edb4753be404cd109121',	'Celer',	'Phase 0',	NULL)
,('Project',	'0xcd150d9cfdb39d287d69b9b1bb7111e58414aca8',	'Aave',	'Phase 0',	NULL)
,('Project',	'0x7ee753e87f20eb3262967c2fc54762b0b4ff4d75',	'Chainlink',	'Phase 0',	NULL)
,('Project',	'0x59672d112d680ce34c20ff1507197993cc0ba430',	'Polynomial Protocol',	'Phase 0',	NULL)
,('Project',	'0xba9493f97bef07a272998139a268398b80ab9dd5',	'0x',	'Phase 0',	NULL)
,('Project',	'0x5b8f3fb479571eca6a06240b21926db586cdf10f',	'Aelin',	'Phase 0',	NULL)
,('Project',	'0x9d439e524f214fb0cb5fa42030e578f60e64d98c',	'Slingshot',	'Phase 0',	NULL)
,('Project',	'0x75f7b331bbdbacafe1ec5ba5215a0fbfc002b3b8',	'WePiggy',	'Phase 0',	NULL)
,('Project',	'0x489863b61c625a15c74fb4c21486bacb4a3937ab',	'Thales',	'Phase 0',	NULL)
,('Project',	'0xa9cd2563c2cce7db8edbe7aacdb0393c68151a28',	'Pika Protocol',	'Phase 0',	NULL)
,('Project',	'0xaf5a0068f5465260a1a88a6264d0dce4469609cf',	'Layer2dao',	'Phase 0',	NULL)
,('Project',	'0x9644a6920bd0a1923c2c6c1dddf691b7a42e8a65',	'Synthetix',	'Phase 0',	NULL)
,('Project',	'0x1dd174bf2e090d0f1b1360ac8905780429b2642b',	'Clipper',	'Phase 0',	NULL)
,('Project',	'0x8602ee2f8aaeb671e409b26d48e36dd8cc3b7ed7',	'Zipswap',	'Phase 0',	NULL)
,('Project',	'0x82d2242257115351899894ef384f779b5ba8c695',	'Kwenta',	'Phase 0',	NULL)
,('Project',	'0xc988107688b750dee6237b85a3ca49ba0a65dab0',	'Hop Protocol',	'Phase 0',	NULL)
,('Project',	'0x2431cbdc0792f5485c4cb0a9bef06c4f21541d52',	'Synapse',	'Phase 0',	NULL)
,('Project',	'0x3576aafaffe4c07f894447265b391856377157db',	'Connext',	'Phase 0',	NULL)
,('Project',	'0x3204ac6f848e05557c6c7876e09059882e07962f',	'Rubicon',	'Phase 0',	NULL)
,('Project',	'0x01ea687be2937d4bfd9e302b8dbd3be8d9bdb14e',	'Gelato',	'Phase 0',	NULL)
,('Project',	'0x392ac17a9028515a3bfa6cce51f8b70306c6bd43',	'Stargate Finance',	'Phase 0',	NULL)
,('Project',	'0xb6dacae4ef97b4817d54df8e005269f509f803f9',	'Lyra',	'Phase 0',	NULL)
,('Project',	'0xdcf664d0f76e99eaa2dbd569474d0e75dc899fcd',	'Perpetual Protocol',	'Phase 0',	NULL)

,('Project',	'0x69c1a51711b061e5935c648beb16e349898b17df',	'dForce',	'Season 1',	NULL)
,('Project',	'0x308810881807189cae91950888b2cb73a1cc5920',	'Mean Finance',	'Season 1',	NULL)
,('Project',	'0x2a185c8a3c63d7bfe63ad5d950244ffe9d0a4b60',	'Beethoven X',	'Season 1',	NULL)
,('Project',	'0xc146a672c85b408a9a7bc00f74ad567b7684134c',	'WardenSwap',	'Season 1',	NULL)
,('Project',	'0x7a79e2e867d36a91bb47e0929787305c95e793c5',	'Pickle Finance',	'Season 1',	NULL)
-- ,('Project',	'tbd',	'Paraswap',	'Season 1',	NULL)
,('Project',	'0x9531c059098e3d194ff87febb587ab07b30b1306',	'Rotki',	'Season 1',	NULL)
,('Project',	'0xa60b3402051ec75b17abb81b4c92bf88d5e49aa8',	'Candide Wallet',	'Season 1',	NULL)
,('Project',	'0x719cf569ffc5c09625b2b5c68a1078f73c6a1a6f',	'Superfluid',	'Season 1',	NULL)
,('Project',	'0x641f26c67a5d0829ae61019131093b6a7c7d18a3',	'Hundred Finance',	'Season 1',	NULL)
,('Project',	'0x31b73b0549e0151b6233c5d179580b8a840b83fb',	'Biconomy',	'Season 1',	NULL)
,('Project',	'0x2319D8e71268FF128e3a9CfA0E62d32596d4DC02',	'Rocket Pool',	'Season 1',	NULL)
,('Project',	'0xf6a4475a006b28b9996c92bee27deedc38032cde',	'Boardroom',	'Season 1',	NULL)
,('Project',	'0x38138586aedb29b436eab16105b09c317f5a79dd',	'xToken / Gamma',	'Season 1',	'xToken')
,('Project',	'0x4aba01fb8e1f6bfe80c56deb367f19f35df0f4ae',	'Beefy Finance',	'Season 1',	NULL)
,('Project',	'0xb1a8d1d6dc07ca0e1e78a0004aa0bb034fa73d60',	'QiDao',	'Season 1',	NULL)

,('Project',	'0x352Fb838A3ae9b0ef2f0EBF24191AcAf4aB9EcEc',	'dHedge',	'Season 2',	NULL)
,('Project',	'0x787B66d5281D45126bf0e0f3C9aC682D1E119d6C',	'Across Protocol',	'Season 2',	NULL)
,('Project',	'0xbFBceA2a72Bc2e62E967fA0c79458dD507708469',	'Bankless Academy',	'Season 2',	'Bankless')
,('Project',	'0x8cadb20a4811f363dadb863a190708bed26245f8',	'Revert Finance',	'Season 2',	NULL)
,('Project',	'0x05d235d8Ba95bfc457f9a11F64cf869f0f3f60F9',	'Kromatika',	'Season 2',	NULL)
,('Project',	'0x10850762bac0dc6660630c1effe188a7cbfddc88',	'OptiChads',	'Season 2',	NULL)
,('Project',	'0xa6e8772af29b29B9202a073f8E36f447689BEef6',	'Interest Protocol',	'Season 2',	NULL)
,('Project',	'0x489863b61C625a15C74FB4C21486baCb4A3937AB',	'Overtime Markets',	'Season 2',	NULL) --dupe, same as thales S0. We'll keep this label as Thales
,('Project',	'0x1219Bfa3A499548507b4917E33F17439b67A2177',	'SushiSwap',	'Season 2',	NULL)
,('Project',	'0x63D5554b748598C191aB0cBd0E0e1C638FFEBEe6',	'Tarot',	'Season 2',	NULL)
,('Project',	'0x2696170bf5fD36320c3932fd9e85fe5b798385FE',	'Otterspace',	'Season 2',	NULL)
,('Project',	'0x9d62e3f4f5a2ef4F446dA692B07860F3C78CEAa4',	'Rainbow Wallet',	'Season 2',	'Rainbow')
,('Project',	'0x627f84bb4bBA3333f253F09fe22A445F195bCF34',	'Karma 1',	'Season 2',	'Karma') --two karmas
,('Project',	'0x627f84bb4bBA3333f253F09fe22A445F195bCF34',	'Karma 2',	'Season 2',	'Karma')
,('Project',	'0x4D218d77cDdD700565826A31837277e9e2Ea0564',	'LiFi',	'Season 2',	NULL)
,('Project',	'0xF5d9D6133b698cE29567a90Ab35CfB874204B3A7',	'Yearn',	'Season 2',	NULL)
,('Project',	'0x90103beDCfbE1eeE44ded89cEd88bA8503580b3D',	'Dope Wars',	'Season 2',	NULL)
,('Project',	'0x3EDf6868d7c42863E44072DaEcC16eCA2804Dea1',	'Safe',	'Season 2',	'Gnosis Safe')
,('Project',	'0xC224bf25Dcc99236F00843c7D8C4194abE8AA94a',	'Alchemix',	'Season 2',	NULL)
,('Project',	'0x3245d3204eeb67afba7b0ba9143e8081365e08a6',	'Angle',	'Season 2',	NULL)
,('Project',	'0x29C8942C7fDDe7fCFB46eb6d0FE62f9dED75361c',	'InsureDAO',	'Season 2',	NULL)
,('Project',	'0xD166EEdf272B860E991d331B71041799379185D5',	'Curve',	'Season 2',	NULL)
,('Project',	'0xfB0dADb835fAdE151aBf6780BeAfB12FC5BA0e1F',	'PoolTogether',	'Season 2',	NULL) --dupe
,('Project',	'0xe497285e466227F4E8648209E34B465dAA1F90a0',	'Overnight',	'Season 2',	NULL)
,('Project',	'0x803CE4f6A0e064a01C56f7Ca21223a7b65e4b869',	'Socket',	'Season 2',	NULL)
,('Project',	'0x2431BFA47bB3d494Bd720FaC71960F27a54b6FE7',	'EthernautDAO',	'Season 2',	NULL)
,('Project',	'0x99b36fDbC582D113aF36A21EBa06BFEAb7b9bE12',	'Tally Ho',	'Season 2',	NULL)
,('Project',	'0x08a3c2A819E3de7ACa384c798269B3Ce1CD0e437',	'DefiLlama',	'Season 2',	NULL)
,('Project',	'0x0e2cd794602152772a19c5eb7bf221ccafdabd9d',	'Agora',	'Season 2',	NULL)
,('Project',	'0x41693B7c0E41CBEa0d4F68Dc73898CB79e390f29',	'Mochi',	'Season 2',	NULL)
,('Project',	'0xb074ec6c37659525EEf2Fb44478077901F878012',	'Velodrome',	'Season 2',	NULL) --dupe

-- Announced Partner Fund
,('Project',	'0xfb0dadb835fade151abf6780beafb12fc5ba0e1f',	'PoolTogether',	'Partner Fund',	NULL)
,('Project',	'0x30688fcd63d0f2d067a7fe264b3367c348e9b031',	'Velodrome',	'Partner Fund',	NULL)
,('Project',	'0x13838884271ec954cb036d0b29d404afab5eae2a',	'CryptoTesters',	'Partner Fund',	NULL)
,('Project',	'0xeb952357394b6668684a4890bd49d8a4c3e19ec0',	'Okex',	'Partner Fund',	'OKX')
,('Project',	'0xb1ea5a3e5ea7fa1834d48058ecda26d8c59e8251',	'Quix',	'Partner Fund',	NULL)




   ) AS x (category, address, proposal_name, funding_source, project_name)