# Crystal Contract : Decentralized Job and Reports Records for Migrant Workers in the Middle East

Alaukik, Andrew, Feifan, Hadrien

# The Problem:

There are over 2.5 million foreign domestic workers in Gulf countries hailing from South Asia, Southeast Asia and Africa. Most of the demand for foriegn workers is in the construction and service industry.  A majority of these workers arrive in hopes of improving the lives of their family and their own. But they face several severe problems. Reports from Amnesty International and the Gulf Research Center provide an in depth case study of the problems that migrant workers face. Crystal Contract aims to deal with the following problems:

The workers do not necessarily get the job, salary and working hours that they are promised. For example, the Gulf Research Center’s report published in 2019 argues that “eighty-five percent of the interviewed migrants signed a contract in Dubai but most of them could not understand its terms as the contract is written in arabic.” 
Recruitment agencies do not take responsibility of the reputation of the companies they are hiring for. Although against the law, their only aim is to send as many workers abroad as possible without caring too much about the working conditions and financial stability of the recruiting company. 
There is no way for workers to report modern day slavery connditons remotely. The passports of low-paid migrant workers  are often confiscated in countries such as Saudi Arabia and it is hard for a worker to remotely lodge a complaint due to the fear of the employer.
Many people become victims of illegal human trafficking. Some recruiting agencies work as a medium for human traffickers to traffick people by posing as companies. Airport officials often have a difficult time screening these false papers. 

# CrystalContract: Work contracts for the most vulnerable on the blockchain

CrystalContract is a DApp that runs on top of the Ethereum network. The purpose of CrystalContract is simple. We help employers and employees sign job contracts on the blockchain. Our target audience is primarily composed of construction and hospitality companies in the Gulf region and the low-skilled migrant workers they hire.

Contracts signed using CrystalContract legally require both parties to act in good faith just like a traditional job contract. Crystalcontract is different because it is in the blockchain and cannot be changed, deleted or intransparent. We will get to the benefits of using blockchain later.

# Here is how it works:

Registered companies seeking to hire workers from abroad are able to request access to our network. (permissioned)
Workers seeking to go abroad can also join the network at the cost of a small gas fee g.
Recruiting companies can also join the network at a fee costing x dollars.
Workers and companies can sign a work contract on the network. The contract is composed of information including but not limited to the duration, salary, start date, job description and any other relevant information. Recruiting companies that helped the two parties sign the contract are also mentioned in the job contract.
Workers that signed a contract with the company at some point can register complaints about the company. Others who have signed a contract with the same company can also show support by signing the report digitally..


# The problems it solves:

i) It helps a third parties such as airport officials monitor human trafficking by checking weather there is a contract between the comapany and the employee. 
ii) A third party such as the government can remotely monitor if all contracts guarantee at least minimum wage to the workers.
iii) It gives a voice to the most vulnerable through a complaint platform. 
iv) It eliminates middlemen that have traditionally supplied fake paperwork to workers. It also helps track all the contracts that a mediator helped to sign, making the mediator more responsible in sending people to  companies with good practices and accountable for any fees they charge to broker the contract.

# Use of Blockchain Technology
CrystalContract’s blockchain solution is better than a massive government database software because the foriegn labor market is corrupt. For instance, former president of the Nepal football Association Ganesh Thapa was found linked to Qatari government. In 2014, one Nepalese migrant worker died every two days building the 2022 World Cup stadiums in Qatar. We need a technology that is immutable and can also possibly be accessed by multiple parties such as Amnesty International or the United Nations Human Rights Council.

Why use the Ethereum’s blockchain development environment? The only options to build a smart contract that uses blockchain technology that we know of are ethereum, building your own blockchain, or using a centralised network like hyper ledger. In our case, using a centralised network would make it easier for a company to bribe a report out of existence. Building our own blockchain would be difficult, and we would struggle with adoption incentives for miners. Because this project is rather simple in scope, the best solution was to build it on top of the Ethereum blockchain.

# Business Model	
There are a few business considerations for CrystalContract. First, we believe that digital literacy and adoption is not as big of an issue because the demographic of workers is fairly young and many of these companies also require basic literacy for the jobs. Our smart contract can also be wrapped in an application with an intuitive user interface. In any case, our business model still includes the existing recruitment agencies as mediums for workers to sign contracts, except now, we would know what exact agency was involved for each contract. The workers also have incentive to join our network as it prevents them from being subject to exploitation. Good companies that have treated their workers fairly would also want to be in our network because it makes the reputation of their company better and more people would want to work for them. Companies that are treating their workers unfairly would thereby be incentivized to join the network and hire workers that are going to their competitors.  Second, this business will require us to lobby the government to introduce such a system.  Having dealt with these business considerations,  we have promising sources of revenue.

I. We can externally collect revenue from companies that wish to be added to the network.
II. Each time a new contract is formed, the entity registering the smart contract sends a small fee to us. There are over 25 million migrant workers in the gulf and there is a constant inflow and outflow. Even if a small percentage of these workers use our platform to sign their job contracts, there is ample possibility for revenue collection.
III. Each worker trying to file a report should also bear responsibility for the gas and pay a small fee to us to file the report in order to dis-incentivize too many unnecessary reports.

# Implementation

The smart contract that CrystalContract has created runs on the global computer, i.e. the Ethereum blockchain. While this makes the deployment process very easy, it also means that once the smart contract is deployed and engaged with users, we cannot change it if there is a mistake. Instead, we have to re-deploy a new version of the smart contract and move all our users over.

Hence, to avoid small mistakes, our implementation has separated as much functionality as possible into separate contracts. In other words, data about employers, employees, mediators and reporting mechanisms have been implemented as separate contracts and the main Work Contract imports all the aforementioned contracts and runs the whole DApp. The following figure illustrates this concept:

As seen in the figure above, in our blockchain model, we have three main roles - companies (employers), employees and mediators, and there are two types of documents – contracts and reports. These roles and documents are implemented as smart contracts. The Work Contract imports all these sub-contracts and use their data and functionalities to help users perform numerous functions in the blockchain including but not limited to i) adding an employee to the network, ii) adding a company to the network, iii) creating a contract, iv) reporting a company, v) deleting a contract, vi) getting a list of all reports etc.



(The first image is an overview of contracts deployed on Remix using the Javascript VM environment. The second and the third are parts of the functions in Work Contract.)

In order for a foreign laborer to legally work for a domestic company, a contract needs to be created in our blockchain and signed by both parties before it takes effect. A mediator will also need to sign it if one wishes to get the commission fee. When employees encounter mistreatment at the workplace that can not be resolved with their employers, they are given the opportunities to file reports on our blockchain platform. Thus, every user in our blockchain will be able to see the incident. 

Some key design decisions that were implemented in the smart contract:
Any user would be able to easily create an employee instance with his/her address by paying a certain amount of gas. (permissionless)
Company and mediator instances can not be created in the same way because we can’t allow just anyone to pose as companies or recruiters. Thus, companies and mediators have to come to the owner of the blockchain to get their instances generated. 
As for work contracts, they can only be created by either companies or mediators, the same as how it works in the real world. The contract won’t take effect until both the company and the employee have signed the contract so as to prevent fraudulence of contracts. When a contract reaches its expiration date, it is imperative that the company and employee sign a new contract in order for the employee to work legally. Otherwise, when a third party checks a contract and finds it out to have expired, this contract will automatically be terminated. During the time an employee works for a company, both sides may choose to break the contract. But the mediator is not entitled to this right. 
When an employee wants to file a report against his/her company, he/she has to be currently working/ formerly worked at the workplace. While protecting the rights of the employees, we also want to prevent malicious attacks from the company’s competitors in the business. That being said, the same condition applies to the employees who show their support by signing the reports.


# Limitations of System:

### Technical Limitations

A first technical limitation can arise based on the fact that employees, employers, and mediators in our network must have access to the internet in order to interact with our application network. Although this is often taken for granted, the countries that we want to target with our application are in areas where this concern can become a technical limitation. 

Another limitation is the fact that all information contained in an Ethereum smart contract, even using the private keyword, is fully visible inside the block. Using the private keyword makes it more difficult to access but it is not cryptographically protected. This means that right now the implementation that we have done makes an employee's signatures visible to the company that he is reporting, which is a problem.

## How to make the signatures of a report anonymous ?

There are 2 safe options to do so as of now.
 The first one would be to rely on a trusted third party to validate transactions and to check when X wants to sign report R, that X has not already signed R before, as well as incrementing RS, the public number of signatures of R. This could be done by calling an ‘oracle’ that could for instance store a hashed “signature dictionary” DR onto the blockchain such that DR[X]=True if X has signed R. No one would be able to read that dictionary but the trusted third party, and the storage capacity of the miners would be used.
The second option would be to use cryptography. In our case the only information that we want to keep hidden is the sender of a signature on a report. It would not serve to hide the report itself since the number of signatures of every report is public and therefore one could easily reverse engineer which report has been signed. Also it would not serve to hide the amount of signatures that one sends, because it can only be 1. I will show that this problem is isomorphic to the Monero implementation and therefore can be solved with publicly available technology.

Let us consider : 
-the public information P (Employees, Company, Mediators, Reports, Number of signatures for each report),  
-a new report R,
-a signatory A that belongs to the Employees.
-Employee A wants to sign R but remain anonymous
-Employee A should be prevented to sign R twice
	
R contains public information on the Company CR that it is about, and the number of signatures it received. Every Employee E has public information of his past contracts CE and, and their respective Companies.
For the new report R, let us create a “Monero” token (we will explain later what this means) at the same time as the creation of the report such that : A new wallet is created for the report itself containing 0 tokens. Every Employee E that has had at least one past contract with CR is awarded 1 signature token, and every other employee is awarded 0 signature tokens. During the course of time, while the report is not marked as solved, at each new contract that is registered on the blockchain, if that contract is between CR and an Employee that did not receive a signature token before, that employee receives a new signature token.
The signature operation is isomorphic to a Monero transaction where the sender sends 1 token to sign the contract.This operation can be both verified (ie no employee signed more than his number of signature tokens) and anonymous [6] (ie the identity of the signatory is hidden) by the monero usage of stealth addresses (which hides the sender) and verification of transaction validity (which prevents anyone from signing more than once). Therefore it would be feasible in the future to make every report’s signatories anonymous, even if it is not the case right now.

### Economic

There are multiple parts of the economic limitations of this system. There first issue is plainly the cost of using our application. Since there is a lot going on behind the scenes when you make a transaction, there will be gas fees. All entities within our application (employers, mediators, employees) will have to pay gas fees to run contracts. On top of that, employers and mediators also have to pay an added fee to sign up. This shouldn’t be a big limitation but it can’t be overstated since it could affect people’s willingness to become users. The idea is that any fees should be small enough that the benefits (better wage transparency, reporting, etc.) outweigh the total costs. 

On the flip side, we also have to note the economic limitations of running our application. Running the full contract of our application is definitely a cost we can’t overlook. In addition, if we plan to scale our application and turn this into an actual business we will have added variable costs such as employees, office space, and possible legal fees. The signup fees for employers and mediators are one way we can take a step towards addressing this limitation.  Another way is for us to get some kind of financial backing or government subsidy. We could also explore moving towards a monthly fee model for all users. 

The other economic limitations of this system stem from the point of view of the employers who may potentially become users. The main goal of our system is to provide wage transparency, especially in cases where companies are purposefully exploiting workers. This puts us in direct opposition with employers who make large profits from exploiting  foreign domestic workers. The limitation here is that for our application to work and make an impact, these companies must be willing to provide transparency at the cost of added profits. 

### Legal

The main legal limitations with our system primarily involve the work contracts. The first limitation is to be able to get the work contracts that are created on this application recognized as legally binding contracts that would hold up in court. If these contracts were not viewed as legally binding agreement then it would be impossible to force them and the foundation of our application would crumble. In order for these contracts to become legally binding, we may have to add more features to them. An example of some of the features we’d have to add are terms and conditions. This would also have to be flexible enough to vary in length from a single paragraph to multiple pages. It is absolutely necessary for employers and mediators to feel like they have the resources to include everything they need to include within the work contracts they create. Otherwise, they would not want to use it. 

Since this app’s users will most likely have backgrounds that span across a multitude of countries, contracts must also be viewed as legal agreements no matter where in the world they are used. The possibility of involvement from different governments makes legal enforcement a bit trickier because we have to be careful that the contract specifications don’t accidentally violate the public policies of another country. We must also include an option for the inclusion of choice of law clauses so that legal disputes can be handled appropriately. 

Another legal limitation is the fact that we don’t have the power or resources to legally enforce good behavior or prevent bad behavior from either party (company or employee). All we can do is backup any reported claims by providing the transactions that were recorded in the blockchain. How do we ensure that reports are about valid complaints rather than libel or defamation? Or how do we ensure that company responses with promises are actually acted on and aren’t just empty gestures? These are some of the legal limitations that face our system.
 
### Social

There are a handful of social limitations with our system on both sides of the employments. The larger looming social limitation comes from the fact that there are currently several social issues that surround the issue of foreign domestic workers. There is the social issue of cultural and language differences between workers and their employers. Therefore, something as basic as both parties being able to read the work contracts and fully understand them becomes a social limitation. Right now the only tested way of creating contracts is in English. Another social issue is the pressure for foreign workers to just work and “not complain”. It is even tougher when employers keep a watching eye and strong fist when it comes to making sure employees are being complicit. This creates a social limitation because we rely on the fact that workers themselves will be willing to come forward and file reports when things are not as they should be. There is a very real possibility for “whistleblowers” and all others who support them to be blackballed from both employment and other aspects of daily life within the foreign country. In the same vein, we also have to deal with the possibility that employers may censor, intimidate, or threaten employees to prevent them from filing reports about misconduct. 

On the employers side the social limitations comes from adoption issues. The benefits for a company that is currently exploiting domestic workers to join our application is that they will have a good social standing and can be labelled as a credible workplace. For many companies, these social benefits alone will not be enough to convince them to become user’s of our application. Unless we get some kind of government backing or a way to put a lot of social pressure on these companies, there is no way we can force companies who want to continue in their misconduct to change. 

On our application side, there can also be social pressure on us to let things slide (delete contracts, reports, etc.). For example, if company A is upset with us for failing to comply with deleting a report or employee, they can go to company B, C, and D and pursued them all to terminate their relationship with us. Since our company relies on employers being users in our application, there may be times when these social pressures create impactful social limitation for us. 

### Regulatory

Since the core of our application centers around foreign domestic workers working in nonnative countries, there will be a lot of countries that have an interest in contracts and reports. This creates a regulatory limitation from the question of who has domain over these issues?  Which countries/governments will have precedence? If it is the country where the employer is located, will that be fair for the employees? And vice versa. Will it be the US since that is where our application is based? In the US, we have the Equal Employment Opportunity Commission (EEOC). This is a regulatory agency that deals with fair employment. Will other countries have a similar type of agency that has experience dealing with the kinds of issues that will be raised? If there are, will they be willing to step in when there may be very real financial consequences for doing so? Will what is “best” for the country take priority over what is best for the employees? These are very pressing questions that create regulatory limitations, some of which overlap with the legal limitations. 

### How do we deal with Sybil Attacks?

The possibility of sybil attacks is a very real threat. The way we deal with this is by making part of our application permissioned and by creating requirements that decide application functionalities. One kind of attack would be for a competing company to create a fake company with the same name as their competitor then employing fake individuals and filing reports to slander their competitor’s name. To prevent this instance from happening companies can only be added by the application owner (ie. us). This gives us the ability to correctly vet and background check any potential employer that wants to join our network in order to confirm that they are legitimate. The same process applies for mediators who want to join our network. Since they will have been vetted when they join the network, only employers and mediators can create work contracts. Employees, on the other hand, can join our network without any restrictions. To prevent a company from simply creating a lot of fake employees that then file reports to slander the name of their competitor, we only allow employees to create reports about employers who they have a contract with. This ensures that only employees who work with an employer can file reports about that specific employer. In addition, this requirement is also in place for any employee that wants to sign a report about an employer. 

In order to prevent employers from simply removing themselves from the network if any reports were created about them, or intimidating their employees into removing themselves from the network, only our organization can remove any kind of entities remove our network. This also allows gives us a last resort to reverse any damage if any misconduct slips by our prevention methods. 



### References
https://blog.stateofthedapps.com/the-abc-of-a-great-dapp-architecture-74c70443bc95
https://github.com/fforbeck/Payroll-SmartContract
https://github.com/NFhbar/Ethereum-Payroll/tree/master/contracts
http://gulfmigration.org/media/pubs/rp/GLMM_EN_2019_RR01.pdf
https://www.amnesty.org/en/documents/ASA20/025/2014/en/
https://web.getmonero.org/resources/moneropedia/ringsignatures.html




### Resources
	Application Front End (Using Etherscan on the Ropsten Test Network)
	Application Presentation


