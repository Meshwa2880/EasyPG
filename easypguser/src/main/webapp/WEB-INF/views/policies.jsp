<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="head.jsp" %>
</head>
<body>
	<div id="page-wrapper">
    	<div class="row">
    		<%@include file="header.jsp" %>
    		
<!--	Page Loader
=============================================================-->
<div class="page-loader position-fixed z-index-9999 w-100 bg-white vh-100">
	<div class="d-flex justify-content-center y-middle position-relative">
	  <div class="spinner-border" role="status">
		<span class="sr-only">Loading...</span>
	  </div>
	</div>
</div>

		<!--	Banner
		===============================================================-->
        <div class="bg-gray full-row py-5 page-banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="page-name float-left text-secondary mt-1 mb-0">Tenancy Policies</h3>
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="breadcrumb" class="float-left float-md-right">
                            <ol class="breadcrumb bg-transparent m-0 p-0">
                                <li class="breadcrumb-item"><a href="/easypguser/user/home">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page" id="b1">Tenancy Policies</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- FAQ Section Start -->
        <div class="full-row py-80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="navigation_link_widget mb-5 bg-gray p-4">
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Policy Categories</h4>
                            <ul>
                                <li> <a href="#b1">Booking Policy</a> </li>
                                <li> <a href="#b2">Security Deposit</a> </li>
                                <li> <a href="#b3">Move-in/Move-out Policy</a> </li>
                                <li> <a href="#b4">Safety and Security</a> </li>
                                <li> <a href="#b5">Theft & Damage Policy</a> </li>
                                <li> <a href="#b6">Convenience and other charges</a> </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="info-pages bg-gray px-4 py-5">
                        <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Booking Policy</h4>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Booking confirmation</h5>
                                    <p>- When tenant pays security deposit then and only then booking of that property will be confirmed.<br>
                                    - The move-in date will be extended in the event any tenant fails to submit the required document to the landlord within the above stipulated time.<br>
                                    - Only the owner of the house has a right to confirm or decline any tenant's booking. In case the owner decline any tenant's booking, a notification via SMS 
                                    and mail will be sent to the tenant on the same day. When the owner declines any tenant's booking, the booking will 
                                    be canceled automatically. Once the booking is declined by the owner, the tenant can opt for any other property listed 
                                    on EasyPG's portal or claim for a full refund.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Notice Period & Minimum Stay</h5>
                                    <p>- Unless explicitly written in one's agreement, there is an early termination charge that applies if the 
                                    tenants moves-out before completing 6 months of stay in all EasyPG houses.
                                    <br>
                                    - If the tenant moves out of EasyPG house before completing 6 months of stay, he/she will be required to pay an amount equivalent to one month's rent. 
                                    The rent here corresponds to the rent on the last occupied bed/room/house.
                                    - Tenant has to provide 10-days' of notice while vacating, without exception at any point in time, any shortfall 
                                    in notice period will be charged on a pro-rata basis where the fees would be equal to the no. of days of shortfall 
                                    of the 10 day period.<br>
									- For clarity, if a tenant moves out before 6 months of stay & doesn’t give any notice, he/she shall be charged one 
									month and 10-days' rent (one month rent for lock-in breach, 10-days' rent for the shortfall of notice)<br>
									- If a tenant has not completed 6 months of stay in the house, but he/she has stayed for 6 months continuously 
									in multiple EasyPG managed properties, then a discount of 50% of one month's rent would be given on the early 
									termination charges.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b2">Early Termination Charges</h5>
                                    <p>- After your license start date, you are required to stay a minimum of 6 months, or you can vacate the house
                                     before 6 months after paying one month’s rent as early termination charges.<br>
									   - Some cities may have a different minimum stay.</p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Security Deposit</h4>
                            <div class="faq-item mb-4"> 
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Deposit Payment Terms</h5>
                                    <p id="b3">
                                    - Tenant needs to pay two months of rent as security deposit (can differ depending on the house & city)<br>
									- Tenant is required to pay a part of the security deposit, referred as the token deposit, at the time of booking.<br>
									- The remainder of Security deposit post booking need to be paid 2 days(4 days if house is under owner confirmation
									 policy) before the license start date/agreement start date.<br>
									- The security deposit paid is mentioned in the rental agreement.<br>
									- Security / token deposit can be paid either by cash or online.<br>
									- In the case where a tenant chooses to make an internal transfer or upgrade his/her current booking type, the 
									difference in the amount of security deposit will be expected to be paid by the tenant before him/her making the
									 actual transfer. In case the new rent is lower, the difference in SDs is adjusted against the following month's rent.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Move-in/Move-out Policy</h4>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Move-in Process</h5>
                                    <p>
                                    - Move-in date can be rescheduled to any day as long as it is after license start date/agreement start date. <br>
									- If the tenant decides to move-in before the license start date/agreement start date then the license start 
									date/agreement start date will be preponed to the move-in date. The rent shall be calculated according to the 
									License start date/Agreement start date clause. <br>
									- If the move-in date is postponed the rent will start as per the Security Deposit and license start date/agreement 
									start date clause. However, the utility charges and other charges will be charged from the actual move-in date. <br>
									- To move-in on a particular date, it is mandatory to schedule a move-in 2 days before the move-in date. <br>
									- Verification is mandatory before move-in. <br>
									- The agreement shall be delivered to the tenant after 3 days of move-in and before 7 working days of moving in. 
									  In a few cities where e-agreements are not allowed like Pune, Mumbai, etc., the agreement creation can take up to
									  45 working days. The agreement shall be delivered via registered courier or in-person delivery.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Move-out Process</h5>
                                    <p>
                                    - Move out needs to be initiated by the tenant. Please log-in to www.EasyPG.com with your registered E-mail id. 
                                    Go to My Account and Select Move Out. Other means like emails to Care, telephonic conversation with any employee, 
                                    etc. will not be considered. <br>
									- Tenant need to ensure his presence on the scheduled move out date else the damages, if any, listed by the 
									inspection team would be considered final.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Move Out Date</h5>
                                    <p>
                                    - The Tenant will also be required to choose a Move Out date. <br>
									- The Move out date can be any day on or before the license end date. <br>
									- The tenant needs to choose the move out date so that Official handover of the keys, Move Out inspection,
									 etc. can be handled accordingly.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary" id="b4">Rescheduling</h5>
                                    <p>
                                    - Move out Date can be postponed by the tenant, up to a maximum of 7 days from the License end date. 
                                    In this case, the license end date also gets shifted to the Move-Out date.<br>
									- Once License end date is selected, the Move Out date can be preponed any number of times, But the 
									license end date will remain the same.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Safety and Security</h4>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <p id="b5">
                                    - EasyPG houses are located in various cities across India in reputed society and safe locations. In order to 
                                    maintain a peaceful environment of the society, nuisance or misconduct of any kind including but not limited to 
                                    playing loud music beyond the permitted time limit, drinking/smoking in society corridors/ premises and consumption
                                     of illegal and banned substances are not allowed in EasyPG houses. <br>
									- Internal issues/ fights among the tenants are better resolved among roomies. Involvement of EasyPG is not 
									beneficial and hence undesirable. <br>
									- In the event tenant breaks any rules as stipulated herein or as contained in the leave and license agreement, 
									EasyPG on behalf of the owner, reserves the right to, issue appropriate notice including but not limited to 
									Eviction notice to the tenant or charge a penalty amount of 5000 INR or more at its sole discretion.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Theft & Damage Policy</h4>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Personal Belongings</h5>
                                    <p>
                                    - The tenant shall be responsible for his/her belongings in the Scheduled Premise and neither the owner,
                                     EasyPG nor its vendors shall not be held liable/ responsible for the same.<br>
									- For general maintenance and/or showing the scheduled premises to any prospective tenants, EasyPG 
									shall keep an extra key of the scheduled premises. It is hereby advised to all the tenants to keep their
									 valuables locked inside the cupboards and not to leave them unattended.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <div class="faq-item mb-4">
                                <div class="d-table">
                                    <h5 class="mb-2 text-secondary">Home Furnishing</h5>
                                    <p id="b6">
                                    - In the case of theft/loss and damage of any furnishing or appliance or furniture in the house , all the tenants 
                                    staying at the scheduled premises at that point of time shall be held responsible. <br>
                                    - A reasonable sum shall be deducted from security deposit of tenants towards compensation of the loss/ theft and
                                     damage or an amount as mentioned in cancellation & refund policy. In case the recovery amount exceeds the security 
                                     deposit, the tenants shall be liable to pay the amount.<br>
                                    - For general maintenance & showing houses to other tenants, NestAway's employees or its affiliate agents may keep 
                                    a copy of the keys of your house. We advise you to keep your valuables locked inside the cupboards & never leave 
                                    them unattended in open places. <br>
									- We shall not be responsible for any theft or accidental damage to your valuables in case of an untoward incident.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                            <h4 class="double-down-line-left text-secondary position-relative pb-4 mb-4">Convenience and other charges</h4>
                            <div class="faq-item mb-4"> 
                                <div class="d-table">
                                    <p>
                                    - There will be an additional charge of 2% (+taxes) on all payments made through payment gateway. <br>
									- For new tenants, this additional charge will not be applicable for the first transaction done through 
									payment gateway.<br>
									- Even we do not like these additional charges. Hence we have provided an option for tenants to avoid these 
									charges. These charges will not be applicable if tenants pay through their bank accounts using NEFT / IMPS / RTGS 
									transfer or UPI.
                                    </p>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        
       <%@include file="footer.jsp" %>
    	
    	<!-- Scroll to top --> 
        <a href="#" class="bg-secondary text-white hover-text-secondary" id="scroll"><i class="fas fa-angle-up"></i></a> 
        <!-- End Scroll To top --> 
    	
    	
   <%@include file="script.jsp" %> 
</body>
</html>