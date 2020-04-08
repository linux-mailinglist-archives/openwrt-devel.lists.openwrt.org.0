Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92441A2797
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 18:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:To:Mime-Version:From:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LtGZDf2qbaMcM6IOo1NVP/xks9RvnIZIsiC+5NgPlrg=; b=dg+D3j26wVQeW1x97AM6VH4/gi
	RFR4eV05uLSOPaN5JfUnCSRJP6pg/XoNji1d2hqkzo516K9fYVRK1S+81M2SyntQ2D79CrwqxpHDm
	mjQD/HpZqH5qHsERclgRF2vBFzDKIZpWbakCYQVnVwDVfWX65kucbhAFHGnDQ/ekr546D5apSMpAF
	JyiE2Js6vhBsJWm3+J79ImwgKMOrBKH/bY7cGmpMOGrjVRA4/kTxkunJiD1VHxJlov5RUHZvh2PlM
	Dv3eD5tQ4jqud5femmRbDIqx2H6fHq8JWJuP2/vu9PeusicfXpA1BSmOR5k19LoBC4i0OEQoyxtBA
	cILgv09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jME14-0003PO-JB; Wed, 08 Apr 2020 16:57:30 +0000
Received: from [149.72.74.11] (helo=wrqvqxhb.outbound-email.sendgrid.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jME0w-0003On-NF
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 16:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net; 
 h=content-type:from:mime-version:reply-to:to:subject:list-unsubscribe; 
 s=smtpapi; bh=4uJ1hdaX4Uxehz4CbRVH4pMu5GU00QcRrTU0WHq8YrY=; b=Xg
 mFGfclAxZN+bGGZ8LcM83WGD3qrg3o279iw4q+BI2ZUZqS8IouWrao6hqfY4ULS2
 F8p6SC7yybHl8spmJjw5G4p/3nj75lpq5epdZT7p0D4thvUY2DSEhkX/ekBV3WHA
 5NBAbqRL7JrxxCrKHPDt3oZyOtJAnnZC1n88Oav3w=
Received: by filter0675p1iad2.sendgrid.net with SMTP id
 filter0675p1iad2-6839-5E8E0126-40
 2020-04-08 16:51:50.570617211 +0000 UTC m=+582277.494683187
Received: from MTU2OTg1MTY (unknown)
 by ismtpd0026p1iad2.sendgrid.net (SG) with HTTP id yWaw-QNbR6GCu9YCMIY2ag
 Wed, 08 Apr 2020 16:51:50.533 +0000 (UTC)
Date: Wed, 08 Apr 2020 16:51:51 +0000 (UTC)
From: "EE" <ee@eemalggc.com>
Mime-Version: 1.0
To: openwrt-devel@lists.openwrt.org
Message-ID: <yWaw-QNbR6GCu9YCMIY2ag@ismtpd0026p1iad2.sendgrid.net>
X-SG-EID: C3xZdBqjDSvyHR+3uPPGAKfeQqaOY4Yl4oXQtTBfY4FOpHuERoDFi5dls2PD8Kfljuv4ZRwFfN/H3s
 2JS3XkcTNbC+jB+aZ7QRRvX3RrYe0EC7CsBdN1glJxuW4f/Ibf9MbjjkN9ouFKJiC6AxVPrF8s4OMw
 cpAj7UnPzUY2m2p6rWK7spvvX0++jNRM8MKRlX7d2ucEVwCj6VUuLxhRrfhF/3LoGDkZkAQqvmwjG7
 w=
X-SG-ID: mcTyqcYTtmn56LU3ATD1f2pwJ72ayt/l2FdvOsKWdE1EKXcIM5PpFkq4+MkTLEUNRCr0lCKnAWg4/5
 t7evMt35IAEcK4XXtfZGPgkR8T46hNnkJJZ1tmVTGQ6SMZytIhJKPpKYn/BojDn9u/jlrQ4gzLOQ8k
 4bpzPBJD52AzV8cR8ZVrG6GMIRsCTKmpGTUTo7OA78nwBR7YnWkwjscYLtK6daYur39UGcwD6tTqnJ
 JOnzbMqvxnI+7+3OKbNm1mw1z7b/tAyQquKv8+yWqrjAdoq0IiCj26N2OGSam/zqEuLzdi+nbWYkMI
 /r0/2+GHX9z5kjYK9fEY66mMmwHer4YZD98B+0rfxu5OsK8AAsnxLyAJXMckb2u+PMCGLSrt3ma6Md
 F+psmgKkPnoidOCpC1SQhpy0g5e8EnfUhTZd75YT0ANa3+2uv+fFDTKBvnpdo39D92lkUNCpsaaG4D
 3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_095722_934246_EB24AE6F 
X-CRM114-Status: UNSURE (   4.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: sendgrid.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 HTML_IMAGE_RATIO_06    BODY: HTML has a low ratio of text to image
 area 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: [OpenWrt-Devel] View Bill - err
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: ee@eemalggc.com
Content-Type: multipart/mixed; boundary="===============5343565324127532385=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5343565324127532385==
Content-Type: multipart/alternative; boundary=1a42ccb34565322781e8dc2df97a1d061c91b1b615bc760d24105e19d760

--1a42ccb34565322781e8dc2df97a1d061c91b1b615bc760d24105e19d760
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Mime-Version: 1.0

Just to let you know, we're working on fixing this.

The best way to update details is to log on to your EE, *login now >* ( htt=
ps://ee.co.uk )

You can also *view billing* ( https://ee.co.uk ) to make sure your account =
details are correct and keep your account safe.

Thanks,
*The EE Team*

=C2=A9 2020 EE LIMITED

EE Limited Registered Office: EE, 10 Glasson Court Victoria Road, Penrith,=
=20=20
All this information was correct on the date we sent this email Unsubscribe=
. (  https://u15698516.ct.sendgrid.net/asm/unsubscribe/?user_id=3D15698516&=
data=3DdyPQWk7xUZGhNN6BgP2YThhjqCOfVZ-wh-98RtxwpZBsnA9nqgYfZ7XFB8BOz9q3YrIm=
NBC5QweTYWNCQQ1HxQ5Fe1-XDu0H_vmIW__HYDjPoFBwliIhl6G0qgtqAVFMSmV4_RSmEzhNAHe=
oLUxBheo7BIXiKct9OY5X8iWKL3odiRFMtsxMfS4btZelO-BvfEHnBT9UqMT0qu-JrXOa9ZumFt=
AeAJ07YfJnjkckQD7CZ_e3KI3UBZPPSYybOmpQRqjzyXxb6Ud1hu1dceQh6VWNDNiakKJo1L6ZG=
JNkr3gD9tlOt3OZ7lxkHdkZh4fa5aBEjgniPX3ConuWjQqx_jgQUGiTtbduwhKpwQbsEWkGLP6A=
xxrXv9wP_vZgn1DuzpJb_uQ1zi4wE9n1Ww4E8tBqCGynp9PEaeOv-IARDWSB7V9M_9NqoXqGYBl=
cUAWoCq6J69Y-vPETUzi_CugTmUi70iHW9ivngnJ0rrc6M5O4-6PlNcm0DrPiuSscEtNoCoxVSa=
m1xmraS2KfrEjBnPTQEmZlqVjahahR_WROXnt9HcWoOZV0PahVD0KiQDaJMIlu3trzHsglxGx2A=
JWgQSiF7NW6NQxs-dtg5TYz-FNw6l4C08W-99f4gzRud6eNxDxUd-3YAvgv0YxwTH3IjysvAPe_=
1ohAkOe7MjFk4x9F4KvVNqBAFhYKqwWWDwZohXzSa0TkypbbgW976DmVxJql5bXSkvihJxqwIqx=
tiiHzRzZA45RnQ9bD9Z-YAg2vNhhxkxTQlaZ6LcYFtNdhS3RQ0-8YYIZucvRjcAvmJ-Uk0KS_oi=
WveVmU-WJCFTCPeHwxSIVrWvgvfk7Q0ueDtn0ZeGYVjgBlMnvvC3RNk57zNkfyLazkziLLJCg93=
HvG  )=

--1a42ccb34565322781e8dc2df97a1d061c91b1b615bc760d24105e19d760
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8
Mime-Version: 1.0


  <html>
    <head>
      <title></title>
    </head>
    <body><tbody><tr><td valign=3D"top" align=3D"center"><img src=3D"https:=
//ee.davinci-crm.com/assets/image/1442996291206/Header1_1465556373445.png" =
width=3D"100%" height=3D"70" border=3D"0" alt=3D"Registered" style=3D"outli=
ne:none;display:block" class=3D"CToWUd"></td></tr><tr><td valign=3D"top" al=
ign=3D"center"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" styl=
e=3D"border-collapse:collapse;margin:0px;padding:0px"><tbody><tr><td bgcolo=
r=3D"#f6f4f0" valign=3D"top" align=3D"center" style=3D"padding:30px 0px"><t=
able  cellpadding=3D"0" cellspacing=3D"0" border=3D"0" align=3D"center" sty=
le=3D"border-collapse:collapse;margin:0px;padding:0px"><tbody><tr><td valig=
n=3D"top" align=3D"center" style=3D"font-family:Arial,Helvetica,sans-serif;=
font-size:16px;line-height:20px;color:rgb(110,109,113);padding-bottom:0px">=
<br>Just to let you know, we're working on fixing this.<br><br>The best way=
 to update details is to log on to your EE,&nbsp;<a  clicktracking=3D"off" =
target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" h=
ref=3D"https://phishtank.com/view_phish_redirect.php?phish_id=3D6481212" st=
yle=3D"color:rgb(0,156,156);font-family:Arial,sans-serif;text-decoration-li=
ne:none;line-height:20px;padding:0px;margin:0px" ><strong>login now &gt;</s=
trong></a><br><br>You can also&nbsp;<a  clicktracking=3D"off" target=3D"_bl=
ank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable" href=3D"https:=
//phishtank.com/view_phish_redirect.php?phish_id=3D6481212" style=3D"color:=
rgb(0,156,156);font-family:Arial,sans-serif;text-decoration-line:none;line-=
height:20px;padding:0px;margin:0px" ><strong>view billing</strong></a>&nbsp=
;to make sure your account details are correct and keep your account safe.<=
br><br>Thanks,<br><strong>The EE Team</strong></td></tr></tbody></table></t=
d></tr><tr><td valign=3D"top" align=3D"left" bgcolor=3D"#3c3d41" style=3D"f=
ont-family:Arial,Helvetica,sans-serif;padding:18px 16px;font-size:16px;line=
-height:16px;color:rgb(255,255,255);font-weight:bold">=C2=A9 2020 EE LIMITE=
D</td></tr><tr><td valign=3D"top" align=3D"center"><table  cellpadding=3D"0=
" cellspacing=3D"0" border=3D"0" bgcolor=3D"#f6f4f0" style=3D"border-collap=
se:collapse;margin:0px;padding:0px"><tbody><tr><td width=3D"4%"></td><td va=
lign=3D"top" align=3D"center" style=3D"font-family:Arial,Helvetica,sans-ser=
if;font-size:10px;line-height:20px;color:rgb(110,109,113);padding-bottom:0p=
x"><br>EE Limited Registered Office: EE, 10 Glasson Court Victoria Road, Pe=
nrith,   <br>All this information was correct on the date we sent this emai=
l  <a class=3D"Unsubscribe--unsubscribeLink" href=3D" https://u15698516.ct.=
sendgrid.net/asm/unsubscribe/?user_id=3D15698516&data=3DdyPQWk7xUZGhNN6BgP2=
YThhjqCOfVZ-wh-98RtxwpZBsnA9nqgYfZ7XFB8BOz9q3YrImNBC5QweTYWNCQQ1HxQ5Fe1-XDu=
0H_vmIW__HYDjPoFBwliIhl6G0qgtqAVFMSmV4_RSmEzhNAHeoLUxBheo7BIXiKct9OY5X8iWKL=
3odiRFMtsxMfS4btZelO-BvfEHnBT9UqMT0qu-JrXOa9ZumFtAeAJ07YfJnjkckQD7CZ_e3KI3U=
BZPPSYybOmpQRqjzyXxb6Ud1hu1dceQh6VWNDNiakKJo1L6ZGJNkr3gD9tlOt3OZ7lxkHdkZh4f=
a5aBEjgniPX3ConuWjQqx_jgQUGiTtbduwhKpwQbsEWkGLP6AxxrXv9wP_vZgn1DuzpJb_uQ1zi=
4wE9n1Ww4E8tBqCGynp9PEaeOv-IARDWSB7V9M_9NqoXqGYBlcUAWoCq6J69Y-vPETUzi_CugTm=
Ui70iHW9ivngnJ0rrc6M5O4-6PlNcm0DrPiuSscEtNoCoxVSam1xmraS2KfrEjBnPTQEmZlqVja=
hahR_WROXnt9HcWoOZV0PahVD0KiQDaJMIlu3trzHsglxGx2AJWgQSiF7NW6NQxs-dtg5TYz-FN=
w6l4C08W-99f4gzRud6eNxDxUd-3YAvgv0YxwTH3IjysvAPe_1ohAkOe7MjFk4x9F4KvVNqBAFh=
YKqwWWDwZohXzSa0TkypbbgW976DmVxJql5bXSkvihJxqwIqxtiiHzRzZA45RnQ9bD9Z-YAg2vN=
hhxkxTQlaZ6LcYFtNdhS3RQ0-8YYIZucvRjcAvmJ-Uk0KS_oiWveVmU-WJCFTCPeHwxSIVrWvgv=
fk7Q0ueDtn0ZeGYVjgBlMnvvC3RNk57zNkfyLazkziLLJCg93HvG " target=3D"_blank" st=
yle=3D"font-family:sans-serif;text-decoration:none;">
            Unsubscribe.
          </a><br>
    </td><td width=3D"4%" style=3D"width:24px"></td></tr></tbody></table></=
td></tr></tbody></table></td></tr></tbody>=20
=20=20=20=20
<img src=3D"https://u15698516.ct.sendgrid.net/wf/open?upn=3DiHHhiMyCjRugsPc=
npSiVzuCO7A-2FCGKbnOsPHlbjQ3vqgoO-2FzuBDkeS9lebzCZ0ehXjUWqatrFTPaHCHyiV9WNX=
2HO6L1fTTMj-2B2TGA46Muf0vew-2BTl0gmY3hZebbJ87YBWGKuf6zDuFrfH7EVOAZM0Lqf5rWq=
j7H4dBtwGwReyf9sySUUyNLo5ynhrNmSlZ2f2gb1h3x4KP2QqgiEghN-2B-2FhD2JqxQyJ5ij1Q=
HReZS3wEJbWmcK0wyo9Jq8-2Fe39OcSAFs0BJHtdOO-2FgfyKs4lvfzyIizFlMsap4hL-2Bp0Fy=
hYeCJemFGro6yJqhpD-2FT-2BRdSiqlOFPOmAvAAvx0A-2Bk-2F4psPjS5HVb0x7-2FU3GBibmN=
GcJwr6aSFA72oXsDHEgjsrN-2BiXsYSmPfqLvGjfRqMdVExaJXIVdohdb9jgGLWw1mDRe6vKElZ=
pyxByv4NC0467P6QA-2BjF2zW7uZGdVTbvCVqmkjctryMWFBZMb8dp102TxU4EZgHdWyzt69xcW=
p5NwThtEF4nJRjYCeYXVOqDe6413qEsMJ7dYs1GGUGklch3Ho5E6quwp5ArsnrizbvfCwFPGF70=
R9fWjVf3KCLiZfVCz-2FiXhroZcedgIj-2FB26dYEpiA5Y7cPzMEaqea4KgQJ-2B6TJ-2FKyWf-=
2Ffo-2B75-2BLyOKfIYgMfd3cUkaMxVQLqF2jUADsBGiiM06JrJnYyQA3bdiUjYybiXOWM2YDeo=
fQvmCjD2k8pOwPANdUmUx7cqj0eo-3D" alt=3D"" width=3D"1" height=3D"1" border=
=3D"0" style=3D"height:1px !important;width:1px !important;border-width:0 !=
important;margin-top:0 !important;margin-bottom:0 !important;margin-right:0=
 !important;margin-left:0 !important;padding-top:0 !important;padding-botto=
m:0 !important;padding-right:0 !important;padding-left:0 !important;"/>
</body>
  </html>


--1a42ccb34565322781e8dc2df97a1d061c91b1b615bc760d24105e19d760--


--===============5343565324127532385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5343565324127532385==--

