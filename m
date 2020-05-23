Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0081DF510
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 08:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sG4ezOkBqj72LYGHBtPcm91TrgvACSJCqCa8OE9CTyo=; b=b0WOMUl+L6vf7JdzfqJAIFRXD2
	12BKgd7/juvJGv+VTv2Md5wNSqs+mWuu6zDjypeN0zySL8w5mJWo0YVWC/8Wn5M/UNBQC6z5sUpBj
	+KhtY8YP1fCQFp10r6Ihl5c646VL1rMTxSXaPfXKz0Xaj0THkdRks/yA47u0muicrv82J9rIyJ9CS
	LKKfiT/tayaLfZNq7edpURw+/r7BZgThDygIosRasHEojNPrdOr+thGpeIsZbvAzJRuaQ62fQEFyF
	h0aSqWHckeScG+HUDVuVz3x/ypLC9aRbmRQFpCmK4zBoKMo5IHvm2dZ0r/C2LHqEfDMUaZmLbYjh1
	hSl5dujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcNHY-0000Ev-RV; Sat, 23 May 2020 06:05:16 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcNHL-0007Va-4L
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 06:05:04 +0000
Received: from 101-247-231-201.fibertel.com.ar ([201.231.247.101]
 helo=94-20-31-181.fibertel.com.ar)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <promomexico@emailmarketingisa.info>)
 id 1jcNHF-0001ED-S2
 for openwrt-devel@openwrt.org; Sat, 23 May 2020 02:04:58 -0400
From: "ISA Email Marketing" <promomexico@emailmarketingisa.info>
To: openwrt-devel@openwrt.org
Date: 23 May 2020 03:04:45 -0300
Message-ID: <20200523030443.B6FADA27960002A4@emailmarketingisa.info>
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam detection software, running on the system "util-01.infra.openwrt.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 
 Content preview:  Buenos dias Mi nombre es Fabián Torre y técnico en EmailMarketing.
    Me agradaria saber si les interesa recibir informaciones sobre productos
   y servicios de EmailMarketing, y a que email puedo enviarlas. 
 
 Content analysis details:   (4.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_SORBS_DUL      RBL: SORBS: sent directly from dynamic IP
                             address
                             [201.231.247.101 listed in dnsbl.sorbs.net]
  0.7 CK_HELO_DYNAMIC_SPLIT_IP Relay HELO'd using suspicious hostname
                             (Split IP)
  0.0 TVD_RCVD_IP            Message was received from an IP address
  0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
                             [201.231.247.101 listed in bl.mailspike.net]
  1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
                             https://senderscore.org/blacklistlookup/
                           [201.231.247.101 listed in bl.score.senderscore.com]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0088]
  1.0 RDNS_DYNAMIC           Delivered to internal network by host with
                             dynamic-looking rDNS
  0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
  3.6 HELO_DYNAMIC_IPADDR2   Relay HELO'd using suspicious hostname (IP
                             addr 2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_230503_329577_CE921256 
X-CRM114-Status: UNSURE (  -4.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [201.231.247.101 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] informaciones sobre email marketing
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
Reply-To: promomexico@emailmarketingisa.info
Content-Type: multipart/mixed; boundary="===============4501314228125991109=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4501314228125991109==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Buenos dias

Mi nombre es Fabi=E1n Torre y t=E9cnico en EmailMarketing.
Me agradaria saber si les interesa recibir informaciones sobre=20
productos y servicios de EmailMarketing, y a que email puedo enviarlas.

Muchas gracias

Whatsapp: +55 719 9313-1792
Skype: chronskype



--===============4501314228125991109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4501314228125991109==--
