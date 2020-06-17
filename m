Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6BA1FCA3D
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 11:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:From:To:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TaddTnx1YKcYpRnlXCk4FQ3wOKXBL2Vui39aW7ENghc=; b=WlJflk2759lnz6Nv+fP7uuav01
	Sg9Qdj/vOHBsNK79eLNDIo5ASliTNO0vwiYSO4wMvRq4aitHPzgM0SEKPKMovFZCLyNNKswTub3bP
	hZGaU/t2wxxI3XTKtuTqFhSmYtVWmZ5cQ5yrtcaLqedw1+mtjBQQbMKzeORzE4xODDI88kW/rEh7A
	h+ma6/fteRsXEFHlRv82bTB2jZfjhQyZtJFtM29i51FQSNRGOGvIY0BVhXjFTiyHT5h91QxDuiHBN
	pD+vdyALrk98F4Gzf8HsMQeow0ZH1BIyfcXqHO+OFq3djpOX6kKzivq5SYO1wY+nP+ovRlDKTLjrn
	D0/FB9jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUnU-0008Lj-Sl; Wed, 17 Jun 2020 09:55:56 +0000
Received: from web.crytrex.com ([185.221.172.127])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUnH-0008H8-2D
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 09:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cryt.org;
 s=default; h=Content-Type:MIME-Version:List-Id:List-Unsubscribe:Message-ID:
 Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f/k4e7Aetqh4SqAkkSiD6W03zboIJeCdq3W5DVNcBPE=; b=X
 QK99b+nPiWVE7csK+sURhBKN197olMJqK0tQC01PgjKPp9q6hiV/PErSo9yy4zKSG3Ag4cd2vu5WY
 5aIz0WG/DqZwU084rHFda30ArHTWAA4/fUkrdq9FBG5QOzC60r81C04TkeFvtfceoKxOh/6r0gVYk
 zfb/D9SpK3+j3zuSXYS8Gsb/hfxGCAdigJpuoLuQWoV6Eho71xfuM82D9ece02FO59XiZl0E8kM2+
 SjM/H0IAwNHq8/zyGsZdSEseJ1OMJmeO2BZDofb/ReoZLVtOX8+QeQVqPyruf7ppTPeJ5MKqgpEh9
 QTF/MXJIaLFzE+hFebPLv0LoSh2QvmMiA==;
Received: from [185.221.172.127] (port=60670 helo=mailing.crytrex.com)
 by web.crytrex.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <news@cryt.org>) id 1jlMSH-0005lA-KY
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 03:01:29 +0200
Date: Wed, 17 Jun 2020 01:01:29 +0000
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
From: DigiByte Lottery <news@cryt.org>
Message-ID: <01d445ad24436a514600569a94e393a0@cryt.org>
X-Nsat-Campaign-Uid: bj128jmtp39af
X-Nsat-Subscriber-Uid: wg392lz0hyd2d
X-Nsat-Customer-Uid: kk22725lay736
X-Nsat-Customer-Gid: 4
X-Nsat-Delivery-Sid: 8
X-Nsat-Tracking-Did: 0
X-Report-Abuse: Please report abuse for this campaign here:
 https://mailing.crytrex.com/campaigns/bj128jmtp39af/report-abuse/yb881rh4pcd85/wg392lz0hyd2d
Feedback-ID: bj128jmtp39af:wg392lz0hyd2d:yb881rh4pcd85:kk22725lay736
Precedence: bulk
X-Nsat-EBS: https://mailing.crytrex.com/lists/block-address
X-Sender: news@cryt.org
X-Receiver: openwrt-devel@lists.openwrt.org
X-Nsat-Mailer: PHPMailer - 6.x
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - web.crytrex.com
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cryt.org
X-Get-Message-Sender-Via: web.crytrex.com: authenticated_id: news@cryt.org
X-Authenticated-Sender: web.crytrex.com: news@cryt.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_025543_462350_76BE7756 
X-CRM114-Status: UNSURE (  -4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: cryt.org]
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 HTML_IMAGE_ONLY_16     BODY: HTML: images with 1200-1600 bytes of
 words 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.3 HTML_SHORT_LINK_IMG_2  HTML is very short with a linked image
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
Subject: [OpenWrt-Devel] Win 20.000$ with DigiByte Lottery
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: DigiByte Lottery <info@digilocation.org>
Content-Type: multipart/mixed; boundary="===============6579227115767617446=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============6579227115767617446==
Content-Type: multipart/alternative;
 boundary="b1_ZFHRzNfbYZOWRE2sPy05iQuJ0t5vj4i9iidRV2kV4k"

This is a multi-part message in MIME format.
--b1_ZFHRzNfbYZOWRE2sPy05iQuJ0t5vj4i9iidRV2kV4k
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

https://mailing.crytrex.com/campaigns/bj128jmtp39af/track-url/wg392lz0hyd2d=
/38b1508016a46e510f83a082fd08cac93f1c0a49
Try to WIN the JackPot 20.000$
=20
>> FREE 30 DigiByte Signup Bonus
+
>> 100% Bonus on any Deposits until 30 June 2020
GO! https://digilocation.org/lottery/
https://mailing.crytrex.com/campaigns/bj128jmtp39af/track-url/wg392lz0hyd2d=
/da6a5ace67536ccc9320a020ad2c6e8fee0bf470
*********************************************
** Sponsored Newsletter **
no more newsletter?
https://mailing.crytrex.com/lists/yb881rh4pcd85/unsubscribe/wg392lz0hyd2d/b=
j128jmtp39af
https://mailing.crytrex.com/campaigns/bj128jmtp39af/track-url/wg392lz0hyd2d=
/251cb345f775c1bcc652f0f69dcac9426106f136

--b1_ZFHRzNfbYZOWRE2sPy05iQuJ0t5vj4i9iidRV2kV4k
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>=0A<html>=0A<head><meta charset=3D"utf-8"/>=0A=09<title></ti=
tle>=0A</head>=0A<body>=0A<div style=3D"text-align: center;"><strong><a hre=
f=3D"https://mailing.crytrex.com/campaigns/bj128jmtp39af/track-url/wg392lz0=
hyd2d/38b1508016a46e510f83a082fd08cac93f1c0a49"><img alt=3D"" src=3D"https:=
//digilocation.org/lottery/lottery.png" style=3D"width: 265px; height: 111p=
x;" /></a><br />=0A<br />=0A<br />=0ATry to WIN the JackPot 20.000$</strong=
><br />=0A<br />=0A<strong> <br />=0A>> FREE 30 DigiByte Signup Bonus<br />=
=0A+<br />=0A>> 100% Bonus on any Deposits until 30 June 2020</strong><br /=
>=0A<br />=0A<br />=0A<br />=0A<strong>GO! <a href=3D"https://mailing.crytr=
ex.com/campaigns/bj128jmtp39af/track-url/wg392lz0hyd2d/da6a5ace67536ccc9320=
a020ad2c6e8fee0bf470">https://digilocation.org/lottery/</a></strong><br />=
=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A=
<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A<br />=0A***=
******************************************<br />=0A<br />=0A** Sponsored Ne=
wsletter **<br />=0Ano more newsletter?<br />=0A<a data-unsubtag=3D"_UNSUBS=
CRIBE_URL_" href=3D"https://mailing.crytrex.com/campaigns/bj128jmtp39af/tra=
ck-url/wg392lz0hyd2d/251cb345f775c1bcc652f0f69dcac9426106f136">https://mail=
ing.crytrex.com/lists/yb881rh4pcd85/unsubscribe/wg392lz0hyd2d/bj128jmtp39af=
</a></div>=0A<img width=3D"1" height=3D"1" src=3D"https://mailing.crytrex.c=
om/campaigns/bj128jmtp39af/track-opening/wg392lz0hyd2d" alt=3D"" />=0A</bod=
y>=0A</html>

--b1_ZFHRzNfbYZOWRE2sPy05iQuJ0t5vj4i9iidRV2kV4k--



--===============6579227115767617446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6579227115767617446==--


