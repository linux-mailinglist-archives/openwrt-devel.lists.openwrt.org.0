Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FDDB95B4
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 18:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=srZfSdagNLq0esC2/owgFI8JlS34C3ajXsWKCpQostk=; b=W2O
	8+XQRqo0S82Zri3y5hOpcGH7UWTs5aV8fMxhH/RrWmb5Y3nJaOO3LiTX6smUGgdLIt3OyB/ejqY8f
	+lvpELoFw343HuG7GpPQLVyt90qxw62IS7H3dItF3+MQYD7/YSYcuMQ7L1Z+rUXevabilDnYsf7uf
	oqP1ToQ/6N4U6CgHGfNjAuAZacpLjkmKaLwDOqB0BUSYL9aStaxb6AlJg4kAG/CItHideB4CzkH39
	ZopxvX+akJ2TsyQz516iJ6C4rSkWUEHYcFOKWI5B58VorzBZbvRZTRO36hiTADQkX+TDMy7r6vg4A
	NsiD9BwDXYUN8DlrHexgg8wnodz+Bqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLpn-0002sH-HQ; Fri, 20 Sep 2019 16:32:39 +0000
Received: from n1nlsmtp03.shr.prod.ams1.secureserver.net ([188.121.43.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLpi-0002l5-85
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 16:32:35 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id BLnziu0SALoCYBLnziBSCM; Fri, 20 Sep 2019 09:30:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Content-Type:MIME-Version:Subject:Message-ID:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ja1SHR5Vrw/2L3dj9QjGa3n1PoJhkyyUUuENdjcaUdI=; b=R86WwxpZXgEZviUGcAAgkTJQXp
 7kxVnahs0sgZkdJODQ/sWNatoILXmXKETu/sbC47xD87WDtHR4neRnsZRMxvM13rez1+Ri4u3olTM
 oqBsm/myU5fejRAOeKd2WZ11L0EIBfniXp+VDpHczeGIuM+uaKNmfMPAxaqBrb1UbcINp4dZaBPQX
 oiwhCefMaoxW0rv8J5JpsmLt4k9UU9xM+1E9XTHn//jKCU3Yur9Amh0aqQdXXLyMGO4CuSIOJz1zd
 8Rb6N6m402msz41kABtVURUzpSBSCRMXCIWTc4kFaR1fKh5kbVWa+W7mB1Qf8oto2KRAxDHbCKVhE
 p2kg/vpQ==;
Received: from [52.125.138.56] (port=60732 helo=mail.outlook.com)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92)
 (envelope-from <support@maxnet.al>) id 1iBLnz-00C9pX-Bi
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 09:30:47 -0700
Date: Fri, 20 Sep 2019 16:30:41 +0000 (UTC)
From: support@maxnet.al
To: openwrt-devel@lists.openwrt.org
Message-ID: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
MIME-Version: 1.0
X-Mailer: Outlook for iOS and Android
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0065.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - maxnet.al
X-Get-Message-Sender-Via: n3plcpnl0065.prod.ams3.secureserver.net: authenticated_id:
 support@maxnet.al
X-Authenticated-Sender: n3plcpnl0065.prod.ams3.secureserver.net: support@maxnet.al
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfHqViU2HMkDTJKr6fP/5Mhu2Ifn8jjoC8cegiDrDUNsA5BDjyI9nZPB2cRcYm6FYeSpBO7K5JKEK5fpeUuOjarr3bDaY0/Ur6zy8ywfHlo9YTo3xEJWS
 QWM7llOxMfWW7stIWOS0uV+A2mXWU/lBZXh3R8s1g7Z2wgbh77xWmY5dbTOs2Gvd2NFeEwK5abIX48JgcQxtb42nJ5hdiM2xddfBFLvG1MDM2jF+EZHu3S1n
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_093234_578527_15360FE6 
X-CRM114-Status: UNSURE (   0.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.121.43.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] QCA9994 outdoor 13km link
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
Content-Type: multipart/mixed; boundary="===============6498223309071938754=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6498223309071938754==
Content-Type: multipart/alternative; 
	boundary="----=_Part_7129_941355400.1568997041873"

------=_Part_7129_941355400.1568997041873
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello everyone,
I am trying to setup a custom made outdoor link with Apu2d2 board devices a=
nd QCA9994 cards from compex. After i installed openwrt and ath10k ct drive=
r, kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS AP=
. The problem is that it won't run as station or station wds. It can scan t=
he SSIDs but won't connect them.=C2=A0
Any suggestion?
Thank you!Klevis


------=_Part_7129_941355400.1568997041873
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div dir=3D"ltr" text-align=3D"left"><div dir=3D"ltr" text-alig=
n=3D"left" style=3D"text-align: left;"><div dir=3D"ltr" text-align=3D"left"=
 style=3D"text-align: left;"><div style=3D"font-family: Helvetica, Arial, s=
ans-serif; font-size: 13.2pt; color: rgb(33, 33, 33); background-color: rgb=
(255, 255, 255); text-align: left;" dir=3D"ltr">Hello everyone,</div><div s=
tyle=3D"font-family: Helvetica, Arial, sans-serif; font-size: 13.2pt; color=
: rgb(33, 33, 33); background-color: rgb(255, 255, 255); text-align: left;"=
 dir=3D"ltr"><br></div><div style=3D"font-family: Helvetica, Arial, sans-se=
rif; font-size: 13.2pt; color: rgb(33, 33, 33); background-color: rgb(255, =
255, 255); text-align: left;" dir=3D"ltr">I am trying to setup a custom mad=
e outdoor link with Apu2d2 board devices and QCA9994 cards from compex. Aft=
er i installed openwrt and ath10k ct driver, kmod ath10k and board-2.bin th=
e device can run a 80MHz channel in WDS AP. The problem is that it won't ru=
n as station or station wds. It can scan the SSIDs but won't connect them.&=
nbsp;</div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-si=
ze: 13.2pt; color: rgb(33, 33, 33); background-color: rgb(255, 255, 255); t=
ext-align: left;" dir=3D"ltr"><br></div><div style=3D"font-family: Helvetic=
a, Arial, sans-serif; font-size: 13.2pt; color: rgb(33, 33, 33); background=
-color: rgb(255, 255, 255); text-align: left;" dir=3D"ltr">Any suggestion?<=
/div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 13=
.2pt; color: rgb(33, 33, 33); background-color: rgb(255, 255, 255); text-al=
ign: left;" dir=3D"ltr"><br></div><div style=3D"font-family: Helvetica, Ari=
al, sans-serif; font-size: 13.2pt; color: rgb(33, 33, 33); background-color=
: rgb(255, 255, 255); text-align: left;" dir=3D"ltr">Thank you!</div><div s=
tyle=3D"font-family: Helvetica, Arial, sans-serif; font-size: 13.2pt; color=
: rgb(33, 33, 33); background-color: rgb(255, 255, 255); text-align: left;"=
 dir=3D"ltr">Klevis</div><div style=3D"font-family: Helvetica, Arial, sans-=
serif; font-size: 13.2pt; color: rgb(33, 33, 33); background-color: rgb(255=
, 255, 255); text-align: left;" dir=3D"ltr"><br></div><div id=3D"ms-outlook=
-mobile-signature" dir=3D"ltr" style=3D"text-align: left;"><div dir=3D"ltr"=
 style=3D"text-align: left;"><br></div></div></div></div></div></body></htm=
l>
------=_Part_7129_941355400.1568997041873--


--===============6498223309071938754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6498223309071938754==--

