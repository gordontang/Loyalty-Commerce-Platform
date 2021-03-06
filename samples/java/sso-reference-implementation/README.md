SSO Reference Implementation
=========

This project demonstrates one website redirecting a logged in member to another website through the LCP.
For more information on this process please go to the [LCP Reference Manual] (http://points.github.io/Loyalty-Commerce-Platform/?doc=reference-manual#single-sign-on-sso-)

## Setup

1. Make sure you have [Eclipse] (http://www.eclipse.org/downloads/) and [M2E] (http://www.eclipse.org/m2e/m2e-downloads.html) installed 
2. Download this repo using: git clone https://github.com/Points/Loyalty-Commerce-Platform.git
3. Import this project into Eclipse
4. Inside src/main/resources update config.properties as follows (the default values will give you a sense for how the sso process will work):

- macId is the Mac ID corresponding to the sandbox or live key of the application you have created in the [LCP admin console] (https://admin.lcp.points.com/)  
- macKey is the Mac Key corresponding to the sandbox or live key of the application you have created in the [LCP admin console] (https://admin.lcp.points.com/)
- applicationId is the ID of the application which is supposed to be allowed to get the details of the member you are redirecting to their site (obtain this from Points)
- lpId is the ID of the LP configured for your loyalty program (Note: if you used your sandbox Mac ID and Mac Key above, then the lpId should start with https://sandbox...)
- redirectBaseURL is the URL where the website where your member will be sent to (obtain this from Points corresponding to the applicationId setup above)

## Usage

- Update populateMemberValidation and populateMemberValidationResponse inside the SSORedirectServlet with the fields and the values you want to send over to the third party website via the LCP
- Run ServerMain (right click on ServerMain and choose Run As->Java Application)
- In your browser proceed to [http://localhost:7071] (http://localhost:7071) which will redirect the member to redirectBaseURL+MV DELEGATE URL
- You should now see in the application the information you provided in the two populate methods being pre-filled thus indicating the application knows who the member is 


